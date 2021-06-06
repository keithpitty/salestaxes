class Product

  def initialize(description:, price:)
    @description = description
    @price = price
  end

  def price_with_taxes
    return @price if exempt_from_sales_tax?

    price_with_sales_tax
  end

  private

  def exempt_from_sales_tax?
    @description == 'book'
  end

  def price_with_sales_tax
    (@price * 1.1).round(2)
  end
end
