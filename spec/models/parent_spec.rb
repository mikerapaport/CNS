describe Parent do

  before(:each) { @parent = Parent.new(firstname: 'test', lastname: 'parent') }

  subject { @parent }

  it { should respond_to(:firstname) }
  it {should respond_to(:lastname)}

  it "#firstname returns a string" do
    expect(@parent.firstname).to match 'test'
  end

  it "#lastname returns a string" do
    expect(@parent.lastname).to match 'parent'
  end


end
