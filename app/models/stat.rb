class Stat
  include Mongoid::Document

  field :temperature, type: Float
  field :humidity, type: Float
  field :preasure, type: Float
  field :time, type: DateTime
end
