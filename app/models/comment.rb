class Comment < ActiveRecord::Base
  belongs_to :post

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :body, :post_id, presence: true
end
