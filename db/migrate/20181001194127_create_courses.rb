class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :total_of_hrs
      t.string :description
      t.timestamps
    end
  end
end
