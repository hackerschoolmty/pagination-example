require 'rails_helper'

RSpec.describe "Products", :type => :request do

  describe "GET /products" do
    it 'Works!' do
      get '/api/v1/products'

      # test for the 200 status-code
      expect(response).to have_http_status(200)
      # expect(response).to be_success
    end

    it 'sends a list of products' do
      FactoryGirl.create_list(:fruit, 10)

      get '/api/v1/products'

      # parse the json response
      json = JSON.parse(response.body)

      # check the right amount of products are returned
      expect(json['products'].length).to eq(10)
    end
  end

end
