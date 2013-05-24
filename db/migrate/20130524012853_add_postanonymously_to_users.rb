class AddPostanonymouslyToUsers < ActiveRecord::Migration
  def change
	add_column :users, :postanonymously, :boolean
  end
end
