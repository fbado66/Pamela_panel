class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :name
      t.string :content
      t.references :cohort
      t.timestamps
    end
  end
end
