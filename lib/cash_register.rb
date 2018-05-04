class CashRegister
  attr_accessor :total

  def initialize(discount=nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total
  end

  def items
    @items
  end

  def add_item(item, price, quantity=1)
    i = 0
    @item = item
    @price = price
    @quantity = quantity
    @total = @price * @quantity
    while i < @quantity
      @items << item
      i += 1
    end
  end

end
