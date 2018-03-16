class CashRegister

  attr_accessor

  @@items = [ ]

  def initialize(discount = 0)
    if (discount == 0)
      @total = 0
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

    self.total
  end

  def apply_discount(discount = 0)

  end

end
