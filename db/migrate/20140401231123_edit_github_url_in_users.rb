class EditGithubUrlInUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :github_url, :github_handle
    end
  end
end
