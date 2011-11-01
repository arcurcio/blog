class CommentMailer < ActionMailer::Base
  default from: "info@wyeworks.com"

  def notify_author(comment)
    @comment = comment
    @post = comment.post
    mail to: @post.user.email, subject: "You've received a comment on #{@post.title}"
  end
end
