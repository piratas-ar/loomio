class RecountEverythingAgain < ActiveRecord::Migration[4.2]
  def change
    DiscussionService.recount_everything!
  end
end
