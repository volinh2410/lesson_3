class User < ApplicationRecord
    has_many :microposts
    has_one_attached :avatar
    validates :name, presence: true;
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "email wrong" }, presence: true
    max_paginates_per 100
end
