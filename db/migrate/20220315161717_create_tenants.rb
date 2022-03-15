class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.references :creator, references: :users

      t.timestamps
    end
  end
end
