class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :completed
end
