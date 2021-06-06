class LineItem
  attr_reader :quantity, :description, :price, :sales_taxes

  def initialize(quantity:, description:, price:)
    @quantity = quantity
    @product = Product.new(description: description, price: price)
  end

  def description
    @product.description
  end

  def price
    @product.price_with_taxes
  end
  
  def sales_taxes
    @product.sales_taxes
  end
end
