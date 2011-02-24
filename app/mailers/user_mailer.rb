class UserMailer < ActionMailer::Base
  default :from => "rubyku85@gmail.com"

  def welcome_email(email, subject, topic, messagebody)
      @email = email
      @subject = subject
      @topic = topic 
      @messagebody = messagebody
      mail(:to => @email,
           :subject => @subject)
  end
  
end
