class TaxProcessor
  def initialize(basket_items:)
    @basket_items = basket_items
  end

  def receipt
    receipt = ''

    @basket_items.each do |item|
      receipt << output_line_for_item(item)
    end

    receipt << "\n#{sales_taxes_output_line}"
    receipt << total_output_line
    receipt
  end

  private

  def output_line_for_item(item)
    "#{item.quantity}, #{item.description}, #{sprintf("%.2f", item.price)}\n"
  end
  
  def sales_taxes_output_line
    total_sales_taxes = 0
    @basket_items.each { |line_item| total_sales_taxes += line_item.sales_taxes }
    "Sales Taxes: #{sprintf("%.2f", total_sales_taxes)}\n"
  end

  def total_output_line
    total = 0
    @basket_items.each { |line_item| total += line_item.price }
    "Total: #{sprintf("%.2f", total)}\n"
  end
end
