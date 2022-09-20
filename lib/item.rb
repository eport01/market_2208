class Item 
  attr_reader :name_price, :name, :price 
  def initialize(name_price)
    @name_price = {}
    @name = name_price[:name]
    @price = name_price[:price][1..4].to_f
  end
end