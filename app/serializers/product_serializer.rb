class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :user_id
end
