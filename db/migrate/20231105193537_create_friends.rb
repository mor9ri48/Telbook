class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name, null: false #名前
      t.timestamps
    end
  end
end
