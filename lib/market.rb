class Market 
  attr_reader :name, :vendors, :add_vendor, :total_inventory
  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor

  end

  def vendor_names
    @vendors.map {|vendor| vendor.name}
    #array of vendor names 
  end

  def vendors_that_sell(item_name)
    v_that_s = []
    @vendors.each do |vendor|
      if vendor.check_stock(item_name) != 0
        v_that_s << vendor.name
      end
    end
    v_that_s
  end

  def sorted_item_list # in progress 
    #returns list of names of all items the vendors have in stock, sorted
    #alphabetically, no duplicates 
    sorted = vendors.map {|vendor| vendor.inventory}.map {|item| item.keys.map {|key| key.name}}.flatten
    sorted.uniq.sort
  end

  def total_inventory # in progress 
    #quantities of all items sold at market.
    #hash w items as keys values are a hash w(quanitity pointing to total inventory
  #and vendors pointing to an array of vendors that sell item)
  #group by item, how many and vendors that sell

        # v = Hash.new([])
        # q = Hash.new(0)
        # vendors.map do |vendor|
        #   vendor.inventory.map do |item|
        #     v[:vendors] = vendors_that_sell(item)
        #     q[:quantity] += vendor.check_stock(item)
        #   end 
        # q.merge(v)
       
    #I need more time to work wiht the code above. I was looking at the values of the hash
    #within the hash.

  end

  def overstocked_items
    #sold by more than 1 vendor AND the total quanitity is greater than 50
    duplicates = vendors.map {|vendor| vendor.inventory.map {|item| vendor.name if vendors_that_sell(item)}}.flatten.uniq
  
    more_than_fifty = vendors.map {|vendor| vendor.inventory.values.sum > 50}

    # if duplicates == true && more_than_fifty == true 
    #   overstocked_items
    # end

    #if vendor.check_stock(item) is duplicate
  #got part of this method. I need an if statement where if duplicates == true && total quantity >50
  #total quanitity I need to iterate over the inventory and add up quantity
  end
end