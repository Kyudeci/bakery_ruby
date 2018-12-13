class Cupcake
  attr_accessor :image, :type, :frosting, :amount
  def initialize (image, type, frosting, amount)
    @image = image
    @type = type
    @frosting = frosting
    @amount = amount
  end
  def price
    @price = 1.50
    @add = 0
    @total = @amount * @price
    if (@frosting == true)
      @add += 0
      else
      @add += 0
    end
    @total += @add
    return @total
  end
end
