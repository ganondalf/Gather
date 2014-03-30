class AddUserIdToObjectives < ActiveRecord::Migration
  def change
    change_table :objectives do |t|
      t.integer :user_id
    end
  end
end
