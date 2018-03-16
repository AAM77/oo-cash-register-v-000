class CashRegister
  attr_accessor :total, :discount

  @@items = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0
  end

  def all
    @@items
  end

  def add_item(item, price, quantity = 1)
    self.all << item
    @previous_total = @total
    @total += (price * quantity)
  end

  def apply_discount(discount = 0)
    @total = @total - (10 * @discount)

    if @previous_total == @total
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
  end


end
