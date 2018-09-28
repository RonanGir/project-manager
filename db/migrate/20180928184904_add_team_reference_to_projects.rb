class AddTeamReferenceToProjects < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :team, foreign_key: true, index: true
  end
end
