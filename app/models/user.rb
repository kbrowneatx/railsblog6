class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :role, :twitter, :website, :postanonymously

  ROLES = %w[author reader]
  has_many :posts
  has_many :comments
end
