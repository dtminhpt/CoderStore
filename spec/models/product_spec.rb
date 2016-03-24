require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Product.alphabetical' do
    it 'should return all products sorted by name alphabetically' do
      product1 = Product.create!(name: 'product C')
      product2 = Product.create!(name: 'product A')
      product3 = Product.create!(name: 'product B')

      expect(Product.alphabetical).to eq([product2, product3, product1])
    end
  end
end
