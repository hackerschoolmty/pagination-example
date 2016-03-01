require 'rails_helper'

RSpec.describe "Products", :type => :request do

  describe "GET /products" do
    it 'Works!' do

      get api_products_path
      # or
      # get '/api/products'

      # test for the 200 status-code
      expect(response).to have_http_status(200)
      # expect(response).to be_success
    end

    it 'sends a list of products' do
      FactoryGirl.create_list(:fruit, 10)

      get api_products_path

      # parse the json response
      json = JSON.parse(response.body)
      # check the right amount of products are returned
      expect(json.length).to eq(10)
    end
  end

  describe "GET /products/:id" do
    let(:product) { FactoryGirl.create(:fruit) }

    it 'Works!' do

      get api_product_path(product)
      # test for the 200 status-code
      expect(response).to be_success
    end

    it 'Show the recient created product' do
      FactoryGirl.create_list(:fruit, 10)

      get api_product_path(product)

      # parse the json response
      json = JSON.parse(response.body)
      # check if the response name of the product is the same
      expect(json['name']).to eq(product.name)
    end
  end


end
