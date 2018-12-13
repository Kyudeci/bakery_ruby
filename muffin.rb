class Muffins
  def initialize (type, amount)
    @type = type;
    @amount = amount;
  end
  def price
    @price = 2.25
    @total = @amount * @price
    return @total;
  end
end
