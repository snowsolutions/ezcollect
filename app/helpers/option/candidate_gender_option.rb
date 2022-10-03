module CandidateGenderOption
  extend AbstractOption
  @hash_key = 'candidate_gender_option'
  @hash = {
    1 => 'Male',
    2 => 'Female',
    3 => 'N/A',
  }
end