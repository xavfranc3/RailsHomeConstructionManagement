class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.timestamps
    end

    create_table :app_admin_tenants do |t|
      t.belongs_to :app_admin
      t.belongs_to :tenant
      t.timestamps
    end
  end
end
