class AddObjectiveIdToResource < ActiveRecord::Migration
  def change
    change_table :resources do |t|
      t.integer :objective_id
    end
  end
end
