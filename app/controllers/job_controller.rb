class JobController < ApplicationController
  layout "client"
  include JobRepository

  def index
    @page_title = t('job.action.listing')
    @collection = Job.all
  end

  def add
    @page_title = t('job.action.create')
  end

  def add_post
    puts "post params"
    post_data = handle_params(params)
    puts post_data.to_s
    if create(post_data)
      redirect_to job_url, success: t('_job') + t('action.create_success')
    else
      redirect_to job_url, error: t('_job') + t('action.create_fail')
    end

  end

  def edit
    @page_title = t('job.action.view')
    @model = Job.find_by(id: params[:id])
  end

  def edit_post
    post_data = handle_params(params)
    if update(post_data)
      redirect_to job_edit_url(id: post_data['id']), success: t('_job') + t('action.update_success')
    else
      redirect_to job_edit_url(id: post_data['id']), error: t('_job') + t('action.update_fail')
    end
  end

  def delete
    if destroy(params[:id])
      redirect_to job_url, success: t('_job') + t('action.delete_success')
    else
      redirect_to job_edit_url(id: post_data['id']), error: t('_job') + t('action.delete_fail')
    end
  end

  private

  def handle_params(params)
    params.require(:job).permit!
  end

end
