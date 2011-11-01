class CommentObserver < ActiveRecord::Observer
  def after_save(comment)
    CommentMailer.notify_author(comment).deliver
  end
end
