class UserMailer < ActionMailer::Base
  default from: "notifications@fireflyforum.net"
  
  def welcome_email(user)
	@user = user
	@url = 'http://www.fireflyforum.net/login'
	mail(:to => user.email, :subject => 'Welcome to the Firefly Fans Forum')
  end
end
