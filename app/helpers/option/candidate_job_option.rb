module CandidateJobOption
  extend AbstractOption
  @hash_key = 'candidate_job_option'
  @is_collection = true
  @collection_model = 'Job'
  @collection_key = 'id'
  @collection_value = 'title'
  @@collection = nil
end