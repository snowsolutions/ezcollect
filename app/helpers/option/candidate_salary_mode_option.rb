module CandidateSalaryModeOption
  extend AbstractOption
  @hash_key = 'candidate_salary_mode_option'
  @hash = {
    1 => 'Monthly NET',
    2 => 'Monthly GROSS',
    3 => 'Per hour',
    4 => 'Per package',
  }
end