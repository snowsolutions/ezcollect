class Workflow::WorkflowBase < ActiveRecord::Base
  self.table_name = "workflows"
  @workflow_type = nil
  def self.all
    if @workflow_type.nil?
      super
    else
      Workflow::WorkflowBase.where(workflow_type: @workflow_type)
    end
  end
end
