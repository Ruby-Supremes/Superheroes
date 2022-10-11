class HeroPowerSerializer < ActiveModel::Serializer
  attributes :strength, :power_id, :hero_id

  belongs_to :hero
end
