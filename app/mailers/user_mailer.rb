class UserMailer < ApplicationMailer
  default from: 'expatrirate@gmail.com'
 
  def welcome_email(user)
    @user = user 

    mail(to: @user.email, subject: 'Welcome to ExpatriRate !') 
  end

  def reset_password_instructions(record, token, opts={})
    super
    puts record
    puts token
    puts opts

  end

end
