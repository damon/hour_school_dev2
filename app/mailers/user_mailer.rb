class UserMailer < ActionMailer::Base
  default :from => "rubyku85@gmail.com"

  def welcome_email(email, subject, body)
      @email = email
      @subject = subject
      @body = body
      mail(:to => @email,
           :subject => @subject)
  end
  
end
