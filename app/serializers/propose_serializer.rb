class ProposeSerializer < ActiveModel::Serializer
  attributes :id, :venue, :account, :flower, :cake, :theme
end
