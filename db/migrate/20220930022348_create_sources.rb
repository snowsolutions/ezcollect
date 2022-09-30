class CreateSources < ActiveRecord::Migration[7.0]
  def change
    create_table :sources do |t|
      t.string :name, null: false
      t.text :description
      t.string :source_type, null: false
      t.timestamps
    end
  end
end
