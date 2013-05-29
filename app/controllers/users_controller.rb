class UsersController < ApplicationController
  def new
		@user = User.new
  end

	def show
		@user = User.find(params[:id])
		#redirect_to(root_url, :notice => 'Record not found') unless @link
	rescue ActiveRecord::RecordNotFound
		redirect_to root_path, :flash => { :error => "Record not found." }
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			render 'new'
		end
	end

  #def edit
  #end

  #def delete
  #end
end
