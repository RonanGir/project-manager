class AddJobToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :job, :string
  end
end
