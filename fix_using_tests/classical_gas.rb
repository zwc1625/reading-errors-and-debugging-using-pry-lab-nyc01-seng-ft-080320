class GasStation

  # Remember which methods this "magic command", "attr_reader" creates.
  # It writes "get" for these two instance variables.
  # https://www.rubyguides.com/2018/11/attr_accessor/
  # https://stackoverflow.com/questions/20018784/attr-accessor-vs-attr-reader-instance-variables/20018831
  attr_reader :brand, :unleaded_price

  def initialize(brand, unleaded_price)
    @brand = brand
    @unleaded_price = unleaded_price
  end

end

petrol_petes = GasStation.new("Petrol Pete's", 50)
seashore_shell = GasStation.new("The Seashore Shell", 40)
dinobones = GasStation.new("Dino Bones Gas and Grill", 60)
