class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 5..100 }
  validates :content, presence: true, length: { minimum: 1000 }
end