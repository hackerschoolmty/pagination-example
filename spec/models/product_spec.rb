require 'rails_helper'

RSpec.describe Product, :type => :model do
  let(:product) { FactoryGirl.build(:fruit) }
  it { should be_valid }
end
