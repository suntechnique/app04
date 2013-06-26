class UserCard < ActiveRecord::Base
  attr_accessible :attr01, :attr02, :attr03, :attr04, :attr05, :attr06, :uid
	belongs_to :User
end
