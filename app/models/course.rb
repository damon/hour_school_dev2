class Course < ActiveRecord::Base
  validates_presence_of:topic
end
