class Catelogy < ApplicationRecord
    has_many :microposts
    validates :catelogyName,presence: true
end
