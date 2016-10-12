class Area
  include Mongoid::Document
  field :area_name, type: String

  embeds_many :stats
  accepts_nested_attributes_for :stats # see http://mongoid.org/en/mongoid/docs/nested_attributes.html#common
end