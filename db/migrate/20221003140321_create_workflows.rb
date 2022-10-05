class CreateWorkflows < ActiveRecord::Migration[7.0]
  def change
    create_table :workflows do |t|
      t.string :name
      t.string :workflow_type
      t.text :available_params
      t.timestamps
    end
  end
end
