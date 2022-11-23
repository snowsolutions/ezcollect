module AbstractOption
  @hash = nil
  @hash_key = nil
  @@hash_cache = {}
  @option = []
  @@option_cache = {}
  @is_collection = false
  @collection_model = nil
  @collection_key = nil
  @collection_value = nil
  @collection = nil
  @@collection_cache = {}

  def to_option
    puts "Calling to_option()"
    unless @@option_cache.key?(@hash_key)
      puts "Building option"
      if @is_collection
        handle_collection_to_option
      end
      option = []
      @hash.each do |key, value|
        option.push({ 'value' => key, 'label' => value })
        puts "key: #{key} - #{value}"
      end
      @@option_cache[@hash_key] = option
    end
    @@option_cache[@hash_key]
  end

  private

  def handle_collection_to_option
    unless @@collection_cache[@hash_key]
      puts "Building collection #{@collection_model} to hash"
      @collection = get_collection unless @@collection_cache.key?(@hash_key)
      new_hash = {}
      @collection.each { |item|
        new_hash[item[@collection_key]] = item[@collection_value]
      }
      @hash = new_hash
      @@hash_cache[@hash_key] = @hash
    end
  end

  private

  def get_collection
    puts "Getting collection"
    @collection = @collection_model.constantize.all
    @@collection_cache[@hash_key] = @collection
  end

  def to_array
    @array
  end

  public

  def to_label(key)
    puts "Calling to_label() key #{@hash_key}"
    unless @@hash_cache.key?(@hash_key)
      if @is_collection
        handle_collection_to_option
      end
      @@hash_cache[@hash_key] = @hash
    end
    @@hash_cache[@hash_key][key]
  end
end