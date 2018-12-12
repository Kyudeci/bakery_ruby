class Cookies
  def initialize (type, icing, amount)
    @type = type; //string
    @icing = icing; //boolean
    @amount = amount; //integer
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
    console.log(@total);
  end
end
