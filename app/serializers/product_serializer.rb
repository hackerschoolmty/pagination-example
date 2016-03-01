class ProductSerializer < ActiveModel::Serializer
  #cache key: 'product', expires_in: 2.hours
  # cache
  # delegate :cache_key, to: :object

  attributes :id,
             :name,
             :description,
             :price
end
