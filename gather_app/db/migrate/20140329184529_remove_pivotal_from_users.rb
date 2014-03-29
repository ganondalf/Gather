class RemovePivotalFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :pivotal_url
    add_column :users, :picture_url, :string
  end
end
