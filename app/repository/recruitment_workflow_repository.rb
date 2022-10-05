module RecruitmentWorkflowRepository
  extend ActiveSupport::Concern

  included do
    include WorkflowRepository, WorkflowInterface
  end
end