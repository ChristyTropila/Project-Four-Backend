class UsersController < ApplicationController

 def index
    @users=User.all
    render json: @users
 end

def show
   @user=User.find_by(userName: params[:userName])
   render json: @user
end

 def create
    @user=User.create(user_params)
       if @user.valid?
        session[:user_id]=@user.id
        render json: @user
       else
        render json:  {error: "USERNAME IS TAKEN! TRY AGAIN"}, status: 422
       end
  end

  def login
   @user=User.find_by(userName: params[:userName])
   if @user && @user.authenticate(params[:password])
      # wristband= encode_token({user_id: @user.id})
      # byebug
      render json: @user
   else
      render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
 end
  end



def update
   @user=User.find(params[:id])
   @user.update(name: params[:name], userName: params[:userName], password: params[:password])
   render json: @user
end

private
def user_params
    params.permit(:name, :userName, :password)
 end

end
