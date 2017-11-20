include Warden::Test::Helpers
Warden.test_mode!

# Feature: User profile page
#   As a user
#   I want to visit my user profile page
#   So I can see my personal account data
feature 'User profile page', :devise do

  after(:each) do
    Warden.test_reset!
  end

  # Scenario: User sees own profile
  #   Given I am signed in
  #   When I visit the user profile page
  #   Then I see my own email address
  scenario 'user sees own profile' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    user.parent = FactoryGirl.create(:parent)
    visit user_path(user)
    expect(page).to have_content 'User'
    expect(page).to have_content user.email
  end

  scenario 'user directed to entry form on signup' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_parent_path
    expect(page).to have_content 'Create a new parent profile'
  end

  # Scenario: User cannot see another user's profile
  #   Given I am signed in
  #   When I visit another user's profile
  #   Then I see an 'access denied' message
  scenario "user cannot see another user's profile" do
    me = FactoryGirl.create(:user)
    other = FactoryGirl.create(:user, email: 'other@example.com')
    login_as(me, :scope => :user)
    me.parent = FactoryGirl.create(:parent)
    other.parent = FactoryGirl.create(:parent)
    Capybara.current_session.driver.header 'Referer', root_path
    visit user_path(other)
    expect(current_path).to eq '/'
  end

end
