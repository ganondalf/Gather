class DeleteMasteryFromObjectives < ActiveRecord::Migration
  def change
    change_table :objectives do |t|
      t.remove :mastery
    end
  end
end
