require_relative '../syntax/the_final_frontier'

describe "runner" do
  it "should return the captain's log and crew greetings" do
    expect(runner).to eq(["Hello Geordi.", "Hello Data.", "Hello Worf.", "Hello William.", "Hello Beverly.", "Hello Deanna."])
  end
end
