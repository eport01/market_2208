class Vendor 
  attr_reader :name, :inventory, :stock, :potential_revenue
  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    #any item not in stock returns zero by default
    @inventory[item]
  end

  def stock(item, count)
    # @inventory[item] = count
    if @inventory[item] += count 
    end

  end

  def potential_revenue
    #sum of item prices * quantity
    @inventory.map {|item, count| item.price * count}.sum
  end
end