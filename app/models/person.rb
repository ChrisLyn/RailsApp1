class Person
  include Mongoid::Document
  field :firstName, type: String
  field :lastName, type: String
  field :email, type: String
  field :notes, type: String
end
