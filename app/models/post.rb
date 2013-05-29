class Post < ActiveRecord::Base
  attr_accessible :user_id, :content, :title, :comments_attributes
  validates :title, presence: true, length: { maximum: 55 }
  validates :content, presence: true
  
  scope :in_ZtoA, order('created_at DESC')
  scope :recent, lambda{ |num = 1| where('updated_at >= ?', num.day.ago).in_ZtoA }
  
  belongs_to :user
  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :comments
end
