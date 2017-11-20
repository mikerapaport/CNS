require 'rails_helper'

RSpec.describe ParentPolicy do

  let (:current_parent) { FactoryGirl.build_stubbed :parent }
  let (:other_parent) { FactoryGirl.build_stubbed :parent }

  subject { ParentPolicy }

  permissions ".scope" do
    pending "add some examples to (or delete) #{__FILE__}"
  end

  permissions :show? do
    it "prevents other parents from seeing your profile" do
      expect(subject).not_to permit(current_parent, other_parent)
    end
    it "allows you to see your own profile" do
      expect(subject).to permit(current_parent, current_parent)
    end
  end

  # permissions :create? do
  #   it { should_not permit(:create) }
  # end

  permissions :update? do
    it "prevents other parents from updating your profile" do
      expect(subject).not_to permit(current_parent, other_parent)
    end

    it "allows current parent to make updates to profile" do
      expect(subject).to permit(current_parent, current_parent)
    end
  end

  # permissions :destroy? do
  #   pending "add some examples to (or delete) #{__FILE__}"
  # end
end
