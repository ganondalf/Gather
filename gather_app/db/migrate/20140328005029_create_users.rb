class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :pivotal_url
      t.string :github_url
      t.string :personal_url
      t.boolean :admin, default: false
    end
  end
end
