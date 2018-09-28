class AddUserIdToUserTeams < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :user_teams, :user_id
  end
end
