class CreateCohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts_students do |t|
      t.references :student
      t.references :cohort
      t.timestamps
    end
  end
end
