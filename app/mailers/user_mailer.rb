class UserMailer < ApplicationMailer
  default from: 'expatriratethp@gmail.com'
 
  def welcome_email(user)
    @user = user 

    mail(to: @user.email, subject: 'Bienvenue sur ExpatriRate !') 
  end
end
