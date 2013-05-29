class User < ActiveRecord::Base
  attr_accessible :bio, :email, :email_confirmation, :name, :password, :role, :twitter, :website, :postanonymously

  validates :name, presence: true, uniqueness: true, length: { maximum: 40 }
  validates :email, confirmation: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :twitter, :allow_blank => true, format: { with: /^([a-zA-Z](_?[a-zA-Z0-9]+)*_?|_([a-zA-Z0-9]+_?)*)$/ }
  validates :website, :allow_blank => true, format: { with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix }
  validates :role, :inclusion => { :in => %w(author reader), :message => "must be author (requires admin approval) or reader" }
  
  scope :in_AtoZ, order('name ASC')
  scope :avidreader, select('users.id, count(comments.id) AS comment_count').
						joins(:comments).
						group('users.id').
						order('comment_count DESC').
						limit(4)
  
  has_many :posts
  has_many :comments
end
