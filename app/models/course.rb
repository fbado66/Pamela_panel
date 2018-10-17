class Course < ApplicationRecord
   has_many :coursecohorts, dependent: :destroy
   has_many :cohorts

   validates :name, :total_of_hrs, :description, presence: true
   validates :total_of_hrs, numericality: { 
                        greater_than: 0,
                                        message: "Hours must be greater than zero" }
end
