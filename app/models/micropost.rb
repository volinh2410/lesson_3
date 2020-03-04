class Micropost < ApplicationRecord
    belongs_to :user
    belongs_to :catelogy
    has_rich_text :content
  validates :content, presence: true
end
