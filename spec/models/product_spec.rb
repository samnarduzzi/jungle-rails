require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    let(:category) { Category.create(name: "Succulents")}
    let(:product) { Product.create(name: "String of Pearls", price_cents: 8500, quantity: 120, category: category)}
    
    it "should save a valid product" do 
      expect(product).to be_valid
    end

    it "should have a valid name" do
      product.name = nil
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it "should have a valid price" do
      product.price_cents = nil
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Price can't be blank")
    end

    it "should have a valid quantity" do
      product.quantity = nil
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "should have a valid category" do
      product.category = nil
      expect(product).to_not be_valid
      expect(product.errors.full_messages).to include("Category can't be blank")
    end

  end
end
