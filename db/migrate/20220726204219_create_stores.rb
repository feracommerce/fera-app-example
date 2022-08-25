class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :fera_id
      t.string :fera_auth_token
      t.string :fera_domain

      t.timestamps
    end
  end
end
