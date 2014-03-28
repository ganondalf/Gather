class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.string :name
      t.string :description
      t.string :week
      t.integer :mastery, default: 0
    end
  end
end
