class CashRegister

  attr_accessor :total, :previous_transaction, :discount

  @@items = [ ]

  def initialize(discount = 0)
    @@items.clear
    @total = 0
    @discount = discount
    self.apply_discount
  end # initialize

  def total
    @total
  end # total

  def add_item(item_name, price, quantity = 1)
    @item = item_name
    @previous_total = self.total
    @total = self.total + (price * quantity)

    @@items << item_name
  end # add_item

  def apply_discount(discount = 0)
    if @discount == 0
      self.total
      "There is no discount to apply."
    else
      @total = @total - @discount
      "After the discount, the total comes to $#{@total}"
    end
  end # apply_discount

  def items
    @@items
  end

  def void_last_transaction

  end

end
