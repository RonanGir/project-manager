class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :type
      t.float :total_cost
      t.float :sold_price
      t.integer :sold_hours
      t.integer :total_time
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
