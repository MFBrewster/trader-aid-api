class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer, :user_id
end
