class RemoveStoreIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :store_id, :bigint
  end
end
