class CashRegister

  attr_accessor

  @@items = [ ]

  def initialize(discount = nil)
    if (discount == 0)
      @total = 0
      puts "There is no discount to apply."
    else
      @discount = discount
      self.apply_discount
    end
  end # initialize

  def total
    @total
  end # total

  def add_item(item_name, price, quantity = 1)
    @item = item_name
    @previous_total = self.total
    @total = @total + (price * quantity)

    @@items << item_name
  end # add_item

  def apply_discount(discount)
    @total = @total - discount

    self.total
  end # apply_discount

  def items
    @@items
  end

  def void_last_transaction

  end

end
