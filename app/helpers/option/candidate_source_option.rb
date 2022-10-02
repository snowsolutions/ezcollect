module CandidateSourceOption
  extend AbstractOption
  @hash_key = 'candidate_source_option'
  @is_collection = true
  @collection_model = 'Source'
  @collection_key = 'id'
  @collection_value = 'name'
  @@collection = nil
end