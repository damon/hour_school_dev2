class UserMailer < ActionMailer::Base
  default :from => "rubyku85@gmail.com"

  def welcome_email(email, subject)
      @email = email
      @subject = subject
      mail(:to => @email,
           :subject => @subject)
  end
  
end
