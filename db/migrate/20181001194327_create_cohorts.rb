class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.string :start_on
      t.string :end_on
      t.string :class_size
      t.references :course
      t.references :instructor
      t.references :student
      t.timestamps
    end
  end
end
