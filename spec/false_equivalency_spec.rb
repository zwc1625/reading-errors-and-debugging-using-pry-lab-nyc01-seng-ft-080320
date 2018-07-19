require_relative '../syntax/false_equivalency'

describe "selection" do
  it "returns the correct string based on user input" do
    expect(selection(1)).to eq("YUM YUM MUNCH MUNCH MUNCH")
    expect(selection(2)).to eq("HAM HAM HAM IN MY TUMMY")
  end
end
