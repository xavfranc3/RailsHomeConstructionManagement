# frozen_string_literal: true
User.create(name: 'super_admin',
            email: 'super_admin@home_construction_management.com',
            password: 'Password123',
            password_confirmation: 'Password123',
            role: 'super_admin')
Account.create(subdomain: 'test_subdomain',
               owner_attributes: { name: 'admin',
                                   email: 'admin@test_subdomain.com', 
                                   password: 'Password123', 
                                   password_confirmation: 'Password123',
                                   role: 'admin' })
User.create(name: 'client',
            email: 'client@test_subdomain.com',
            password: 'Password123',
            password_confirmation: 'Password123',
            role: 'client')
User.create(name: 'staff1',
            email: 'staff1@test_subdomain.com',
            password: 'Password123',
            password_confirmation: 'Password123',
            role: 'staff1')

