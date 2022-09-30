module JobHelper
  def self.get_salary_type_option
    [
      {
        'value' => 'from',
        'label' => 'From'
      },
      {
        'value' => 'up_to',
        'label' => 'Up to'
      },
      {
        'value' => 'fixed',
        'label' => 'Fixed'
      },
      {
        'value' => 'range',
        'label' => 'Range'
      },
      {
        'value' => 'negotiate',
        'label' => 'Negotiate'
      }
    ]
  end
end
