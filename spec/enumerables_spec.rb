require 'pry'
require_relative '../class/enumerables'

describe "turtle traits" do
  it "should call the method after it has been defined" do
    expect(turtle_traits).to eq([["serious", "leader"], ["party dude"], ["cool", "rude"], ["loves being a tutrle"]])
  end
end
