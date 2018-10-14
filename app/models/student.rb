class Student < ApplicationRecord
   has_many :cohorts_students
   has_many :cohorts, through: :cohorts_students, dependent: :destroy

     validates :age, numericality: { 
      greater_than: 0,
                       less_than: 151, message: "150 is the limit" }

end 

