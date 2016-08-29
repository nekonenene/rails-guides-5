class Comment < ApplicationRecord
  belongs_to :article

  # 投稿者名, 本文は必須
  validates :commenter, presence: true
  validates :body, presence: true
end
