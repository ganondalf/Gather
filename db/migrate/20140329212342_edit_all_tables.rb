class EditAllTables < ActiveRecord::Migration

  def change
    change_table :objectives do |t|
      t.belongs_to :week
      t.belongs_to :resource
      t.remove :user_id
      t.remove :week
    end

    change_table :resources do |t|
      t.remove :objective_id
    end

  end
end
