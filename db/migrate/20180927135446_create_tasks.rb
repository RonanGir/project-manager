class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.string :state
      t.string :priority
      t.string :tag
      t.integer :time
      t.datetime :due_date

      t.timestamps
    end
  end
end
