module JobRepository
  include JobInterface

  def get(id)
    Job.find_by(id: id)
  end

  def create(data)
    data[:users_id] = session[:user_id]
    model = Job.new(data)
    save(model)
  end

  def update(data)
    model = get(data['id'])
    model.update(data)
  end

  def save(model)
    model.save
  end

  def destroy(id)
    model = get(id)
    model.destroy
  end

end