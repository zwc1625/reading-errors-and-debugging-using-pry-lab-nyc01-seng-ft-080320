require_relative '../first_priority/that_was_unexpected'

describe "expect the unexpected" do
  let(:baller) {Person.new('Jordan')}
  it "should tell me if the Person is a ballin candy lover" do
    expect(baller.ballin_candy_lover?).to eq(true)
  end
end
