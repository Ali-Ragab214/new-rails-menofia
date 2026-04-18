class Post < ApplicationRecord
  belongs_to :user ,class_name: 'User' , foreign_key: 'user_id'
  has_many :post_ediors 
  has_many :ediors , through: :post_ediors
end
