AppAdmin.find_or_create_by(name: 'AppAdmin') do |user|
  user.name = 'AppAdmin'
  user.email = 'admin@test.com'
  user.password = 'Password123'
end

Tenant.find_or_create_by(name: 'Tenant') do |tenant|
  tenant.name = 'TestTenant1'
  tenant.creator_id = 1
end