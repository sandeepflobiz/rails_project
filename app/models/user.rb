class User < ApplicationRecord
  validates :content, length: {maximum: 20}
  has_many :micropost
end
