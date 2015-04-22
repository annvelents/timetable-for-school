class CreateHoursAtWeeks < ActiveRecord::Migration
  def change
    create_table :hours_at_weeks do |t|
      t.integer :count_of_hours

      t.belongs_to :group, index: true
      t.belongs_to :subject, index: true

      t.timestamps null: false
    end
  end
end
