class ChangeTotalTimeToBeIntegerInProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :total_time, :integer
  end
end
