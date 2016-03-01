FactoryGirl.define do
  factory :product do
    description { FFaker::DizzleIpsum.sentence }
    price       { rand(1.0...30.0) }
  end

  factory :fruit, parent: :product do
    name        { FFaker::Food.fruit }
  end

  factory :vegetable, parent: :product do
    name        { FFaker::Food.vegetable }
  end

  factory :ingredient, parent: :product do
    name        { FFaker::Food.ingredient }
  end


end
