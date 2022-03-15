class Tenant < ApplicationRecord
  belongs_to :creator, class_name: 'AppAdmin', foreign_key: 'creator_id'

  validates :name, presence: true
end
