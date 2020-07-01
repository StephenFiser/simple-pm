class TaskComponent < ViewComponent::Base
  extend Forwardable

  delegate [:id, :status, :project, :name, :description, :persisted?] => :@task

  attr_reader :task

  def initialize(task:)
    @task = task
  end

  def render?
    persisted?
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
    id
  end

end
