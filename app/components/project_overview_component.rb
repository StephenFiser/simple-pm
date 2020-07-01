class ProjectOverviewComponent < ViewComponent::Base
  extend Forwardable

  delegate [:name, :description, :status, :percent_complete, :total_complete, :total_tasks] => :@project

  with_collection_parameter :project
  attr_reader :project

  def initialize(project:)
    @project = project
  end

  def completion_stats
    "#{display_percent_complete} #{display_breakdown}"
  end

  private

  def display_percent_complete
    "#{percent_complete}% complete"
  end

  def display_breakdown
    "(#{total_complete}/#{total_tasks} tasks)"
  end

end
