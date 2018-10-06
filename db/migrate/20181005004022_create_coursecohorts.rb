class CreateCoursecohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :coursecohorts do |t|
      t.references :course
      t.references :cohort
      t.timestamps
    end
  end
end
