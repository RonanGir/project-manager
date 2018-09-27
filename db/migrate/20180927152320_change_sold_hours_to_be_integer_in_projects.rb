class ChangeSoldHoursToBeIntegerInProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :sold_hours, :integer
  end
end
