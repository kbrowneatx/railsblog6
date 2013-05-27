class Post < ActiveRecord::Base
  attr_accessible :user_id, :content, :title
  validates :title, presence: true, length: { maximum: 55 }
  validates :content, presence: true
  
  belongs_to :user
  has_many :comments, :dependent => :destroy
end
