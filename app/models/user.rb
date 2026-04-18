class User < ApplicationRecord
  has_many :posts  , class_name: 'Post' , foreign_key: 'user_id'
end
