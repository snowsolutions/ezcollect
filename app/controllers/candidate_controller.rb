class CandidateController < ApplicationController
  layout "client"
  include CandidateRepository
  include ActiveStorage::SetCurrent
  def index
    @page_title = t('candidate_listing')
    @collection = Candidate.all
    render steam: true
  end

  def add
    @page_title = t('candidate.action.create')
  end
  def add_post
    post_data = handle_params(params)
    if create(post_data)
      redirect_to candidate_url, success: t('_candidate') + t('action.create_success')
    else
      redirect_to candidate_url, error: t('_candidate') + t('action.create_fail')
    end
  end

  def edit
    @page_title = t('candidate.action.view')
  end

  def edit_post
    post_data = handle_params(params)
    if update(post_data)
      redirect_to candidate_edit_url(id: post_data['id']), success: t('_candidate') + t('action.update_success')
    else
      redirect_to candidate_edit_url(id: post_data['id']), error: t('_candidate') + t('action.update_fail')
    end
  end

  def pdf
    # pdf = Prawn::Document.new
    # pdf.
  end

  def handle_params(params)
    params.require(:candidate).permit!
  end

end
