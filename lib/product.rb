class Product

  def initialize(description:, price:)
    @description = description
    @price = price
  end

  def price_with_taxes
    @price
  end
end
