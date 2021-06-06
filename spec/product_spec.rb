require 'product'

RSpec.describe Product do
  describe "#price_with_taxes" do
    let(:book) { Product.new(description: 'book', price: 12.49) }

    it "returns correct price for local book" do
      expect(book.price_with_taxes).to eq(12.49)
    end
  end
end
