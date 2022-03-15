class AppAdmin < User
  has_many :tenants, inverse_of: 'creator', foreign_key: 'creator_id'
end
