class Image < ActiveRecord::Base
  attr_accessible :id, :path, :user_id
  belongs_to :user
end
