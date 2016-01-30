class FormSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :github, :twitter, :city, :state, :bio

  has_many :skills, key: 'skills_attributes'
end
