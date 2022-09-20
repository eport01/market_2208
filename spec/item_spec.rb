require './lib/item'

RSpec.describe Item do 
  it 'exists' do 
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    expect(item1).to be_an_instance_of(Item)
  end
end