class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :clips,dependent: :destroy
end
