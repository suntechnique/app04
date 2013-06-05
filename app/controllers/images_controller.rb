class ImagesController < ApplicationController
  def show
		@images = Image.find_by_user_id(params[:user_id])
		respond_to do |format|
			format.html # index.html.erb
		end
  end

  def new
  end

  def destroy
  end
end