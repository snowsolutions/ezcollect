module WorkflowRepository
  include WorkflowInterface

  def get(id)
    Workflow.find_by(id: id)
  end

  def create(data)
    model = Workflow.new(data)
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