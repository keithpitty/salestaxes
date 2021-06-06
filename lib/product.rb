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

    round_up((@price * 0.1).round(2))
  end

  def import_duty
    return 0 if local?

    round_up((@price * 0.05).round(2))
  end

  def round_up(tax)
    return tax if to_nearest_5_cents?(tax)

    round_up((tax + 0.01).round(2))
  end

  def to_nearest_5_cents?(tax)
    (tax * 100).to_i.remainder(5) == 0
  end
end
