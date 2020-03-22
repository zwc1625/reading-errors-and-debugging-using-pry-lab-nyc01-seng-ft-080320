require_relative '../fix_using_tests/the_final_frontier'

describe "the_final_frontier" do
  it "`engage` should return the captain's log and crew greetings" do
    expect{ engage }.to output(/Captain's Log, star date /).to_stdout
  end
end
