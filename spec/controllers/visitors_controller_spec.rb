require "rails_helper"

RSpec.describe VisitorsController, :type => :controller do
  describe "GET #index" do
    before do
      @product1 = Product.create!(name: 'product C')
      @product2 = Product.create!(name: 'product A')
      @product3 = Product.create!(name: 'product B')
    end

    it "loads all of the products into @products" do
      get :index

      expect(assigns(:products)).to eq([@product1, @product2, @product3])
    end

    it "loads all of the sorted products into @products when specified" do
      get :index, sort: :alphabetical

      expect(assigns(:products)).to eq([@product2, @product3, @product1])
    end
  end
end
