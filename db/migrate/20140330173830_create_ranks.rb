class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.belongs_to :user
      t.belongs_to :objective
      t.integer :value, default: 0
      t.timestamps
    end
  end
end
