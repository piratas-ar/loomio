class CreateDiscussionForEachMotion < ActiveRecord::Migration[4.2]
  def up
    Motion.all.each do |motion|
      if motion.discussion_id == nil
        motion.discussion = Discussion.create(author_id: motion.author.id, group_id: motion.group.id)
        motion.save
      end
    end
  end

  def down
  end
end
