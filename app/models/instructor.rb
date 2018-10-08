class Instructor < ApplicationRecord
  has_many :cohorts

    validates :age, numericality: { 
                      less_than: 151, message: "150 is the limit" }
    validates :salary, numericality: { 
                        greater_than: 0,
                                        message: "150 is the limit" }
  
  # belongs_to :cohort
 
end 