class ProgressBadgeComponent < ViewComponent::Base
  attr_reader :status

  def initialize(status:)
    @status = status
  end

  def badge_color
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end
end
