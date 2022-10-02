module JobStatusOption
  extend AbstractOption
  @hash_key = 'job_status_option'
  @hash = {
    'open' => 'Open',
    'hold' => 'Hold',
    'close' => 'Close',
  }
end