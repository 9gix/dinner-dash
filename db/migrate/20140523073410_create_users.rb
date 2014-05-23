class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.string :display_name
      t.string :password
      t.boolean :is_admin

      t.timestamps
    end
  end
end
