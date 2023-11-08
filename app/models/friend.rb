class Friend < ApplicationRecord
  #1対多の関連付けの設定(参照先側のモデルクラス)
  has_many :telephones, dependent: :destroy

  #バリデーション設定
  validates :name, presence: true,
    format: { with: /\A*\z/ },
    length: { maximum: 10 }
end
