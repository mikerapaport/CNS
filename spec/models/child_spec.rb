describe Child do

  before(:each) { @child = Child.new(firstname: 'test', lastname: 'child') }

  subject { @child }

  it { should respond_to(:firstname) }
  it {should respond_to(:lastname)}

  it "#firstname returns a string" do
    expect(@child.firstname).to match 'test'
  end

  it "#lastname returns a string" do
    expect(@child.lastname).to match 'child'
  end

end
