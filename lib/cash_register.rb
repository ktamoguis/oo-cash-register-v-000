class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def total
    @total = @price * @quantity
  end

  def add_item(item, price, quantity = 1)
    i = 0
    @item = item
    @price = price
    @quantity = quantity
    self.total
    while i < quantity
      @items < item
      i += 1
    end
  end

end
