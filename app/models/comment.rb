class Comment < ApplicationRecord
 has_many :postcomment
  has_many :post, through: :postcomment
end
