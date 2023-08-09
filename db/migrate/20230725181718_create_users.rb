class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :rut, limit: 10, unique: true
      t.string :username
      t.string :name
      t.string :email, unique: true
      t.string :phone
      t.integer :age
      t.string :address
      t.string :profile_picture
      t.date :date_of_birth
      t.string :gender
      t.string :account_status

      t.timestamps
    end
  end
end
