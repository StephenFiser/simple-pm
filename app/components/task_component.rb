class TaskComponent < ViewComponent::Base
  attr_reader :task

  def initialize(task:)
    @task = task
  end

  def render?
    task.persisted?
  end

  def status
    task.status
  end

  def color_class
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end

  def task_id
    task.id
  end

  def project
    task.project
  end

  def name
    task.name
  end

  def description
    task.description
  end

end
