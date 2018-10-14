class Course < ApplicationRecord
   has_many :coursecohorts, dependent: :destroy
   has_many :cohorts
end
