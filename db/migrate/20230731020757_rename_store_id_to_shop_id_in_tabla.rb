class RenameStoreIdToShopIdInTabla < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :store_id, :shop_id
  end
end
