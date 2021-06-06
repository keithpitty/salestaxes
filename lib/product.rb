class Product

  def initialize(description:, price:)
    @description = description
    @price = price
  end

  def price_with_taxes
    (@price + sales_tax + import_duty).round(2)
  end

  private

  def exempt?
    exempt_from_sales_tax? || local?
  end

  def exempt_from_sales_tax?
    books? || food?
  end

  def local?
    !imported?
  end

  def imported?
    @description.include? 'imported'
  end

  def books?
    @description.include? 'book'
  end

  def food?
    @description.include? 'chocolate'
  end

  def sales_tax
    return 0 if exempt_from_sales_tax?

    @price * 0.1
  end

  def import_duty
    return 0 if local?

    @price * 0.05
  end
end
