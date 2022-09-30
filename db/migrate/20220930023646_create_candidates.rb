class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.references :users
      t.references :users
      t.timestamps
    end
  end
end
