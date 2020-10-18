class Photo < ApplicationRecord
  # include Commentable
  belongs_to :user
  has_many :comments, as: :commentable
end
