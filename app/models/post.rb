class Post < ApplicationRecord
 has_many :postcomment
  has_many :comment, through: :postcomment

end
