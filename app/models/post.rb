class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 280 } #tweets cant be more than 280 characters
  default_scope -> { order(created_at: :desc)} # most recent first
end
