class Cake
  attr_accessor :image, :type, :decoration, :amount
  def initialize (image, type, decoration, amount)
    @type = type;
    @decoration = decoration;
    @amount = amount;
  end
  def price
    @price = 5.00
    @add = 0
    @total = @amount * @price
    if (@decoration == true)
      @add += 0.50
      else
      @add += 0
    end
    @total += @add
    return @total;
  end
end
