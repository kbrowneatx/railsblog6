class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :role
      t.text :bio
      t.string :twitter
      t.string :website

      t.timestamps
    end
  end
end
