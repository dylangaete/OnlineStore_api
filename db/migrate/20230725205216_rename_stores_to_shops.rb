class RenameStoresToShops < ActiveRecord::Migration[7.0]
  def change
    rename_table :stores, :shops
  end
end
