class CreateTelephones < ActiveRecord::Migration[7.0]
  def change
    create_table :telephones do |t|
      t.references :friend, null: false                 # 外部キー
      t.string :number, null: false                     # 電話番号
      t.boolean :cellphone, null: false, default: false # 携帯電話か否かのフラグ
      t.timestamps
    end
  end
end
