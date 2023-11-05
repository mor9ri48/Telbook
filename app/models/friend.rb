class Friend < ApplicationRecord
  #1対多の関連付けの設定(参照先側のモデルクラス)
  has_many :telephones, dependent: :destroy
end
