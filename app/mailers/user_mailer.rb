class UserMailer < ApplicationMailer
  default from: 'expatrirate@gmail.com'
 
  def welcome_email(user)
    @user = user 

    mail(to: @user.email, subject: 'Bienvenue sur ExpatriRate !') 
  end
end
