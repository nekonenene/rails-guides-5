class Article < ApplicationRecord
  validates :title, presence: true,
    length: {minimum: 5} # タイトルは最低5文字
  # comment モデルと対応させる, dependent により、article が消されたら依存するコメント群を削除
  has_many :comments, dependent: :destroy
end
