class Stat
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :post, inverse_of: :comments

  field :name, type: String
  field :value, type: Float
  field :unit, type: String
  field :time, type: String
end
