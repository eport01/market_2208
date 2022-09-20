class Item 
  attr_reader :name_price, :name, :price 
  def initialize(name_price)
    @name_price = {}
    @name = name_price[:name]
    @price = name_price[:price]
  end
end