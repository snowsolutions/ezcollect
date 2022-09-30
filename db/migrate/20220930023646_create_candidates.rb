class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.datetime :dob
      t.string :telephone
      t.string :email
      t.string :experience
      t.integer :level
      t.references :users
      t.references :sources
      t.timestamps
    end
  end
end
