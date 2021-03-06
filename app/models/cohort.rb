class Cohort < ApplicationRecord
   has_many :cohorts_students
   has_many :students, through: :cohorts_students, dependent: :destroy
   has_many :cohortinstructors
   has_many :instructors, through: :cohortinstructors, dependent: :destroy
  
  belongs_to :course

  validates :name, :start_on, :end_on, :student_id, :instructor_id, presence: true  
  

end
