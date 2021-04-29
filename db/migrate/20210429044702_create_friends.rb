class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.boolean :active,:null=>false
      t.timestamps
    end
  end
end
