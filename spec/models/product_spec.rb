require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "valid product" do
    product = Product.new
    product.name = "some"
    product.type = "thing"
    product.quantity = 1
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :type }
    it { is_expected.to validate_presence_of :quantity }
    it { expect(product).to be_valid }
  end
  
  describe "invalid product"
  product = Product.new
  product.name = "some"
  it { expect(product).to be_invalid }
end
