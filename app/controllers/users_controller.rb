class UsersController < ApplicationController
  def donate
  end
  def ngo
  	@user=User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    	flash[:success]="congratulations"
      # Handle a successful save.
    else
    	flash[:danger]="you are fucked up bro"
      render 'ngo'
    end
  end
	
	

  private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end
