class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount=nil)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total = @total + @price * @quantity
  end

  def items
    @items
  end

  def add_item(item, price, quantity=1)
    i = 0
    @item = item
    @price = price
    @quantity = quantity
    self.total
    while i < @quantity
      @items << item
      i += 1
    end
  end

end
