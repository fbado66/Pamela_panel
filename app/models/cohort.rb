class Cohort < ApplicationRecord
   has_many :cohorts_students
   has_many :students, through: :cohorts_students
   has_one :instructor

  # has_many :students
  # has_many :instructors
  belongs_to :course

end
