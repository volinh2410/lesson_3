class Micropost < ApplicationRecord
    belongs_to :user
    belongs_to :catelogy
  validates :content, length: { maximum: 140 },presence: true
end
