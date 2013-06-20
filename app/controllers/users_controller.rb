class UsersController < ApplicationController
	before_filter :signed_in_user, only: [:index, :edit, :update, :destroy]
	before_filter :correct_user,   only: [:edit, :update]

	###############################################################################################################
	############## 04.06.2013 START
	###############################################################################################################

	def index
		#@users = User.all
		@users = User.paginate(page: params[:page])
	end

	###############################################################################################################
	############## 04.06.2013 END
	###############################################################################################################

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
		if @user[:password]
			flash[:success] = "password empty"
			render add_path
		end

		if @user.save
			#sign_in @user
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			render 'new'
		end

	end

  def edit
		@user = User.find(params[:id])
  end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:success] = "Profile updated"
			sign_in @user
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User destroyed."
		redirect_to users_url
	end

	def addcard
		@user = User.new
		#respond_to do |format|
		#  format.html # index.html.erb
		#end
		#render :layout => false
	end

  private

  def signed_in_user
	  #flash[:notice] = "Please sign in."
	  #redirect_to signin_url
	  #redirect_to signin_url, notice: "Please sign in." unless signed_in?
	  unless signed_in?
		  store_location
		  redirect_to signin_url, notice: "Please sign in."
	  end
  end

	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_path) unless current_user?(@user)
	end
end
