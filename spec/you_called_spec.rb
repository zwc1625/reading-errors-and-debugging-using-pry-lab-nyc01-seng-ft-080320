require 'pry'
require_relative '../method_errors/you_called'

describe "Mario Party" do
  it "should call the method after it has been defined" do
    expect(super_mario_party).to eq("Sorry, your princess is in another castle")
  end
end
