class AddStoreIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :store_id, :bigint
    add_foreign_key :users, :stores
  end
end
