class Cohort < ApplicationRecord
   has_many :cohorts_students
   has_many :students, through: :cohorts_students, dependent: :destroy
   has_many :cohortinstructors
   has_many :instructors, through: :cohortinstructors, dependent: :destroy


  # has_many :students
  # has_many :instructors
  belongs_to :course

end
