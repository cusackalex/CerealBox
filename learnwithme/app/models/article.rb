class Article < ActiveRecord::Base
   has_many :course_articles
   has_many :courses, :through => :course_articles

   validates :title, :link, presence: true
end
