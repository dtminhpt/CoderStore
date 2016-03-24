class Product < ActiveRecord::Base
  def self.alphabetical
    Product.order(name: :asc)
  end
end
