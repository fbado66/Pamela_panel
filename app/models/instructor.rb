class Instructor < ApplicationRecord
  has_many :cohortinstructors
   has_many :cohorts, through: :cohortinstructors, dependent: :destroy
   
   
   validates :first_name, :last_name, :age, :salary, :education, :email, presence: true


    validates :age, numericality: { 
                      greater_than: 0,
                      less_than: 151, message: "150 is the limit" }
    validates :salary, numericality: { 
                        greater_than: 0,
                                        message: "salary must be greater than zero" }
  
  # belongs_to :cohort
 
end 