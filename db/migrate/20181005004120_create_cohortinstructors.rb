class CreateCohortinstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :cohortinstructors do |t|
      t.references :instructor
      t.references :cohort
      t.timestamps
    end
  end
end
