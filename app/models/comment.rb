class Comment < ActiveRecord::Base
  belongs_to :post

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :body, presence: true

  after_save :notify_author

  private

  def notify_author
    CommentMailer.notify_author(self).deliver
  end
end
