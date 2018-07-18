require 'pry'
require_relative '../class/pemdos'

describe "snake_it_up" do
  it "adds the letter 's' ten times before any word that starts with 's'" do
  expect(snake_it_up("surprise!")).to eq("sssssssssssurprise!")
  end
end
