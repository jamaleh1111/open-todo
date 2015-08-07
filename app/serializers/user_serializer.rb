class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :encrypted_password
end
