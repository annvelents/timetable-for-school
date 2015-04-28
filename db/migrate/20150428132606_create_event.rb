class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :repeat
      t.string :is_for
    end
  end
end
