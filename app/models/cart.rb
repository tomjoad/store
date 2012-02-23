class Cart

  attr_reader :items
  attr_writer :items

  def initialize(items)
    items = { } if items.nil?
    @items = items
  end

  # adding items to cart
  def add_item(item)
    if @items.has_key? item.id.to_s
      value = (@items[item.id.to_s].to_i + 1).to_s
      @items[item.id.to_s] = value
    else
      @items.update({ item.id.to_s => '1' })
    end
  end

  # removing items from cart
  def remove_item(item)
  end

end
