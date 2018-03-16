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

end
