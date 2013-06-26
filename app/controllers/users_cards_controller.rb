class UsersCardsController < ApplicationController
  def new
		@card = Post.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @card }
		end
  end

  def create
  end
end
