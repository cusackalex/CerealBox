class CourseVideo < ActiveRecord::Base
  belongs_to :course
  belongs_to :video
end