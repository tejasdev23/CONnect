class UsersController < ApplicationController
  def donate
  end
  def ngo
  	@user=User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      log_in user
      flash[:success] = "Welcome to the App!"
      redirect_to user
    else
    	flash[:danger]="you are fucked up bro"
      render 'ngo'
    end
  end
	def show
  end
	

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
