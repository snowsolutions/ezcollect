module JobWorkModeOption
  extend AbstractOption
  @hash_key = 'job_work_mode_option'
  @hash = {
    'remote' => 'Remote',
    'at_office' => 'At Office',
    'hybrid' => 'Hybrid',
  }
end