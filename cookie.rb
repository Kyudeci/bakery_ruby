class Cookies
  attr_accessor :image, :type, :icing, :amount
  def initialize (image, type, icing, amount)
    @image = image
    @type = type
    @icing = icing;
    @amount = amount
  end
  def price
    @price = 1.00
    @add = 0
    @total = @amount * @price
    if (@icing == true)
      @add += 0.50
      else
      @add += 0
    end
    @total += @add
    return @total
  end
end
