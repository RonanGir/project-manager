class AddTaskIdToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :task_id, :integer
  end
end
