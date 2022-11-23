class CreateWorkflowStages < ActiveRecord::Migration[7.0]
  def change
    create_table :workflow_stages do |t|
      t.string :name
      t.string :group
      t.timestamps
    end
  end
end
