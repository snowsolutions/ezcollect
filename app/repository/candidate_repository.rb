module CandidateRepository
  include CandidateInterface

  def get(id)
    Candidate.find_by(id: id)
  end

  def get_previous(id)
    Candidate.where("id < ?", id).order("id desc").first
  end

  def get_next(id)
    Candidate.where("id > ?", id).order("id asc").first
  end

  def create(data)
    data[:users_id] = session[:user_id]
    model = Candidate.new(data)
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