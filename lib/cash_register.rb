class CashRegister

  attr_accessor 

  @@items = [ ]

  def initialize(discount = 0)
    @total = 0
    @discount = discount

  end

  def total
    @total
  end

  def add_item(item_name, price, quantity = 1)

end
