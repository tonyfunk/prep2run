class CreateScheduleEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :schedule_entries do |t|
      t.references :exercise, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
