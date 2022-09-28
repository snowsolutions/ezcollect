class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.text :name
      t.text :email
      t.text :password
      t.string :password_digest
      t.string :role
      t.timestamps
    end
  end
end
