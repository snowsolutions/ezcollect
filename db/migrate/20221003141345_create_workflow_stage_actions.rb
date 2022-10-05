class CreateWorkflowStageActions < ActiveRecord::Migration[7.0]
  def change
    create_table :workflow_stage_actions do |t|
      t.string :name
      t.string :action_type
      t.text :action_detail
      t.timestamps
    end
  end
end
