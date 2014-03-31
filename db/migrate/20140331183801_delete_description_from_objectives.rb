class DeleteDescriptionFromObjectives < ActiveRecord::Migration
  def change
    change_table :objectives do |t|
      t.remove :description
      t.rename :name, :description
    end
  end
end
