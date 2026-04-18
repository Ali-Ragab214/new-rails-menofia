class Editor < ApplicationRecord
  has_many :post_ediors 
  has_many :posts , through: :post_ediors
end
