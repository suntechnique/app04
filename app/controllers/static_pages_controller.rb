class StaticPagesController < ApplicationController
  def home
	  respond_to do |format|
		  format.html # index.html.erb
	  end
  end
end
