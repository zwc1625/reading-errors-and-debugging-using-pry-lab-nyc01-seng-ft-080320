require 'pry'
require_relative '../syntax/enumerables'

describe "turtle traits" do
  it "should be able to iterate through the array without breaking." do
    expect(turtle_traits(turtles)).to eq([["serious", "leader"], ["party dude"], ["cool", "rude"], ["loves being a turtle"]])
  end
end
