module CandidateUserOption
  extend AbstractOption
  @hash_key = 'candidate_user_option'
  @is_collection = true
  @collection_model = 'User'
  @collection_key = 'id'
  @collection_value = 'name'
  @@collection = nil
end