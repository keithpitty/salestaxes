require 'product'

RSpec.describe Product do
  describe "#price_with_taxes" do
    let(:book) { Product.new(description: 'book', price: 12.49) }
    let(:music_cd) { Product.new(description: 'music CD', price: 14.99) }
    let(:chocolate_bar) { Product.new(description: 'chocolate bar', price: 0.85) }
    let(:imported_chocolates) { Product.new(description: 'imported box of chocolates', price: 10) }
    let(:imported_perfume) { Product.new(description: 'imported bottle of perfume', price: 47.50) }
    let(:more_imported_perfume) { Product.new(description: 'imported bottle of perfume', price: 27.99) }

    it "returns correct price for local book" do
      expect(book.price_with_taxes).to eq(12.49)
    end

    it "returns correct price for local music CD" do
      expect(music_cd.price_with_taxes).to eq(16.49)
    end

    it "returns correct price for chocolate bar" do
      expect(chocolate_bar.price_with_taxes).to eq(0.85)
    end

    it "returns correct price for imported box of chocolates" do
      expect(imported_chocolates.price_with_taxes).to eq(10.50)
    end

    it "returns correct price for imported bottle of perfume" do
      expect(imported_perfume.price_with_taxes).to eq(54.65)
    end

    it "returns correct price for imported bottle of perfume with base price of 27.99" do
      expect(more_imported_perfume.price_with_taxes).to eq(32.19)
    end
  end
end
