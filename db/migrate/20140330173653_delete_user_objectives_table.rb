class DeleteUserObjectivesTable < ActiveRecord::Migration
  def change
    drop_table :objectives_users
  end
end
