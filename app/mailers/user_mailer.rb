class UserMailer < Devise::Mailer 
  helper :application
  include Devise::Controllers::UrlHelpers
  default template_path: 'devise/mailer'
  default from: 'expatrirate@gmail.com'
 
  def welcome_email(user)
    @user = user 

    mail(to: @user.email, subject: 'Welcome to ExpatriRate !') 
  end

  def reset_password_instructions(record, token, opts={})
    super
  end

end
