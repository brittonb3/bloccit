class Topic < ActiveRecord::Base
  has_many :sponsored_posts
  has_many :posts, dependent: :destroy
end
