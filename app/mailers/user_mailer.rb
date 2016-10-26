class UserMailer < ActionMailer::Base
  default from: "dreams.bakery.online@gmail.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://dreamsbakery.vgorbachenko.com"
  	mail(to: @user.email, subject: 'Welcome to Dreams Bakery!')
  end
  def reply_email(user, parent)
    @parent = parent
  	@user = user
  	@url = "http://dreamsbakery.vgorbachenko.com/messages/#{ @parent.id }"
  	mail(to: @user.email, subject: 'Someone has sent you a reply')
  end
end
