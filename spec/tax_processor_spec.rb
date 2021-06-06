require 'tax_processor'
require 'line_item'

RSpec.describe TaxProcessor do
  describe "#generate_receipt" do
    let(:shopping_basket_1) {
      [
        LineItem.new(quantity: 1, description: 'book', price: 12.49),
        LineItem.new(quantity: 1, description: 'music cd', price: 14.99),
        LineItem.new(quantity: 1, description: 'chocolate bar', price: 0.85)
      ]
    }

    let(:receipt_1) {
      <<~RECEIPT_1
      1, book, 12.49
      1, music CD, 16.49
      1, chocolate bar, 0.85

      Sales Taxes: 1.50
      Total: 29.83
RECEIPT_1
    }

    it "generates expected receipt for first shopping basket" do
      expect(TaxProcessor.new(basket_items: shopping_basket_1).receipt).to eq(receipt_1)
    end
  end
end
