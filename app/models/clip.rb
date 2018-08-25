class Clip < ActiveRecord::Base
  validates :user_id, :uniqueness => {:scope => :blog_id}

  belongs_to :user
  belongs_to :blog
end
