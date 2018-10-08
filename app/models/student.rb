class Student < ApplicationRecord
   has_many :cohorts_students 
   has_many :cohorts, through: :cohorts_students

    # validates :age, numericality: { 
      # greater_than: 0,
                      # less_than: 151, message: "150 is the limit" }
  # belongs_to :cohort

  # has_secure_password

  # validates :email, :password, presence: true
  
  # validates :password, confirmation: true
  # validates :password_confirmation, presence: true
end 

