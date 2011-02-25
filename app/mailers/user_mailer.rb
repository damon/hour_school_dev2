class UserMailer < ActionMailer::Base
  default :from => "rubyku85@gmail.com"

  def welcome_email(course)
      @course = course
      mail(:to => @course.teacher_email,
           :subject => "You have a new class request!")
  end
  
end
