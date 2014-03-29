class AddTimestamps < ActiveRecord::Migration
  def change
    change_table :objectives do |t|
      t.timestamps
    end

    change_table :users do |t|
      t.timestamps
    end

    change_table :resources do |t|
      t.timestamps
    end
  end
end
