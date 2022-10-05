class WorkflowController < ApplicationController
  layout "client"
  include RecruitmentWorkflowRepository

  def index
    workflow_type = params[:type]
    puts "query workflow type #{workflow_type}"
    case workflow_type
    when 'recruitment'
      @page_title = t('workflow.action.listing')
      @collection = Workflow::RecruitmentWorkflow.all
    else
      @page_title = t('workflow.action.listing')
      @collection = Workflow::WorkflowBase.all
    end
  end

  def add
    @page_title = t('workflow.action.create')
  end

  def add_post
    post_data = handle_params(params)
    if create(post_data)
      redirect_to workflow_url, success: t('_workflow') + t('action.create_success')
    else
      redirect_to workflow_url, error: t('_workflow') + t('action.create_fail')
    end
  end

  def edit
    @page_title = t('workflow.action.view')
  end

  def edit_post
    post_data = handle_params(params)
    if update(post_data)
      redirect_to workflow_edit_url(id: post_data['id']), success: t('_workflow') + t('action.update_success')
    else
      redirect_to workflow_edit_url(id: post_data['id']), error: t('_workflow') + t('action.update_fail')
    end
  end

  def handle_params(params)
    params.require(:workflow).permit!
  end
end
