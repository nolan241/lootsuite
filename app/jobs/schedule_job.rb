class ScheduleJob < ApplicationJob
  queue_as :default

  def perform(post)
    post.display
  end
end
