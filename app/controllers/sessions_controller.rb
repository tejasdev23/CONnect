class SessionsController < ApplicationController
  def new
  end
  def create
  	user=User.find_by(email: params[:session][:email] )
  	if user && user.authenticate(params[:session][:password])
  		#log in and redirect to users show page
      log_in user
      redirect_to user

  		
  		
  	 else
  	 	flash[:danger]="fucked up"
  	 	render  'new'
  	 	
  	 end 
  	
  end


end
