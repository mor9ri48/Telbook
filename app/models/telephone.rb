class Telephone < ApplicationRecord
  #1対多の関連付けの設定(参照元側のモデルクラス)
  belongs_to :user, class_name: "Friend", foreign_key: "friend_id"

  #バリデーション設定
  validates :number, presence: true,
  format: { with: /\A(\d|[-()]){8,20}\z/ },
  length: { minimum: 8, maximum: 20, allow_blank: true }, #空文字と文字数不足のエラーを二重で出さないために、「allow_blank: true」をつける
  uniqueness: { case_sensitive: false }
end
