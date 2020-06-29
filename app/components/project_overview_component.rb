class ProjectOverviewComponent < ViewComponent::Base
  with_collection_parameter :project
  attr_reader :project

  def initialize(project:)
    @project = project
  end

  def name
    project.name
  end

  def description
    project.description
  end

  def completion_stats
    "#{display_percent_complete} #{display_breakdown}"
  end

  def status
    project.status
  end

  private

  def display_percent_complete
    "#{project.percent_complete}% complete"
  end

  def display_breakdown
    "(#{project.total_complete}/#{project.total_tasks} tasks)"
  end

end
