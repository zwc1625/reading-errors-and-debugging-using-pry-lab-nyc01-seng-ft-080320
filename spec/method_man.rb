require 'pry'
require_relative '../method_errors/method_man'

describe "start_game" do
  it "should return greetings for each players name" do
    expect(start_game("Rocky", "Bullwinkle")).to eq("Hello Rocky & Bullwinkle")
  end
end

describe "play_game" do
  it "should return a string that states which player is better" do
    expect(play_game("Jay-Z", "Beyonce")).to eq("Jay-Z is better than Beyonce")
  end
end
