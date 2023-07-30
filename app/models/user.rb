class User < ApplicationRecord
  
  # Associations
  has_one_attached :avatar
  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_tweets, through: :likes, source: :tweet
  enum role: { member: 0, admin: 1 }
end
