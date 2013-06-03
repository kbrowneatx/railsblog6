class Comment < ActiveRecord::Base
  attr_accessible :content, :post_id, :user_id
  validates :user_id, presence: true
  
  belongs_to :post
  belongs_to :user
end
