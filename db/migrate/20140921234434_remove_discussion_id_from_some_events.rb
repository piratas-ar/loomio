class RemoveDiscussionIdFromSomeEvents < ActiveRecord::Migration[4.2]
  def change
    Event.where(kind: ['motion_closing_soon', 'new_discussion']).update_all('discussion_id = null')
  end
end
