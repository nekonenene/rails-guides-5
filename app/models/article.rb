class Article < ApplicationRecord
  validates :title, presence: true,
    length: {minimum: 5} # タイトルは最低5文字
end
