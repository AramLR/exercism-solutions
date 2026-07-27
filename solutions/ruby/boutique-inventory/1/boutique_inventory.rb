class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.sort{ |item1, item2| item1[:name] <=> item2[:name] }.collect {|item| item[:name]}
  end

  def cheap
    @items.select { |item| item[:price] < 30}
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty?}
  end

  def stock_for_item(name)
    @items.find { |item| item[:name] == name}[:quantity_by_size]
  end

  def total_stock
    @items.sum { |item| item[:quantity_by_size].values.sum}
  end

  private
  attr_reader :items
end