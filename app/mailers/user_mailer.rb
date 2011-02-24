class UserMailer < ActionMailer::Base
  default :from => "rubyku85@gmail.com"

  def welcome_email(email, subject, topic, body)
      @email = email
      @subject = subject
      @topic = topic 
      @body = body
      mail(:to => @email,
           :subject => @subject)
  end
  
end
