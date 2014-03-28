class CreateObjectivesUsers < ActiveRecord::Migration
  def change
    create_table :objectives_users, id: false do |t|
      t.integer :user_id, index: true
      t.integer :objective_id, index: true
    end
  end
end
