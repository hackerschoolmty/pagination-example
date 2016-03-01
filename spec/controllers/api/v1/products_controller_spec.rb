require 'rails_helper'

RSpec.describe Api::V1::ProductsController, :type => :controller do

  let(:valid_attributes) { FactoryGirl.attributes_for :vegetable }

  let(:invalid_attributes) { }

  describe "GET index" do
    it "assigns all products as @products" do
      product = Product.create! valid_attributes
      get :index, {}
      expect(assigns(:products)).to eq([product])
    end
  end

  describe "GET show" do
    it "assigns the requested product as @product" do
      product = Product.create! valid_attributes
      get :show, {:id => product.to_param}
      expect(assigns(:product)).to eq(product)
    end
  end

end
