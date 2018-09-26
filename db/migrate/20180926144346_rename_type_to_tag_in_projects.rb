class RenameTypeToTagInProjects < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :type, :tag
  end
end
