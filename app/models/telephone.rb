class Telephone < ApplicationRecord
  #1対多の関連付けの設定(参照元側のモデルクラス)
  belongs_to :user, class_name: "Friend", foreign_key: "friend_id"

  #バリデーション設定
  validates :number, presence: true,
  format: { with: /\A(\(0\d{1,4}\)\d{1,4}[-]?\d{4}|0\d{1,4}[-]?\d{1,4}[-]?\d{4}|0\d{1,4}\(\d{1,4}\)\d{4})\z/ },
  length: { minimum: 8, maximum: 20, allow_blank: true },
  uniqueness: { case_sensitive: false }
end
