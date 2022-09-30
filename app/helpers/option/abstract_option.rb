module AbstractOption
  @hash = []
  @option = []
  def to_option
    @option = []
    @hash.each do |key, value|
      @option.push({ 'value' =>  key, 'label' => value})
    end
    @option
  end

  def to_array
    @array
  end

  def to_label(key)
    @hash[key]
  end
end