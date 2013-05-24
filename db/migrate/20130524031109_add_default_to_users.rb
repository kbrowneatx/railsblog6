class AddDefaultToUsers < ActiveRecord::Migration
  def change
    # Set default value of postanonymous to false
    change_column_default :users, :postanonymously, false
  end
end
