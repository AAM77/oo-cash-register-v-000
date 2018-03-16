class CashRegister

  attr_accessor :total

  @@items = [ ]

  def initialize(discount = "There is no discount to apply.")
    @@items.clear

    @total = 0
    @discount = discount
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

  def apply_discount(discount = "There is no discount to apply.")
    @total = @total - @discount
  end # apply_discount

  def items
    @@items
  end

  def void_last_transaction

  end

end
