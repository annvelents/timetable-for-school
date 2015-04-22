class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|

      t.string :name
      t.integer :count_of_members
      t.string :teacher

      t.timestamps null: false
    end
  end
end
