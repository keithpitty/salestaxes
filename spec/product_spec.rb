require 'product'

RSpec.describe Product do
  describe "#price_with_taxes" do
    let(:book) { Product.new(description: 'book', price: 12.49) }
    let(:music_cd) { Product.new(description: 'music CD', price: 14.99) }

    it "returns correct price for local book" do
      expect(book.price_with_taxes).to eq(12.49)
    end

    it "returns correct price for local music CD" do
      expect(music_cd.price_with_taxes).to eq(16.49)
    end
  end
end
