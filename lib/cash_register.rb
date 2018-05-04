class CashRegister
  attr_accessor :total
  attr_reader :discount

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
    @total = @total + @price * @quantity
    while i < @quantity
      @items << item
      i += 1
    end
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to #{@total*(1-@discount/100)}"
    end
  end

end
