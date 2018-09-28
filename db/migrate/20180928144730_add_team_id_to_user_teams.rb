class AddTeamIdToUserTeams < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :user_teams, :team_id
  end
end
