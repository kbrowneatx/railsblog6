class User < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password, :role, :twitter, :website

  ROLES = %w[author reader anon_reader]
  has_many :posts
  has_many :comments
end
