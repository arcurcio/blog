class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :admin

  validates :title, :body, presence: true
end
