class Telephone < ApplicationRecord
  #1対多の関連付けの設定(参照元側のモデルクラス)
  belongs_to :user, class_name: "Friend", foreign_key: "friend_id"
end
