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
        render json: {errors: @user.errors.full_messages}
       end
  end

  def login
   byebug
   @user=User.find_by(userName: params[:userName])
   byebug
   if @user && @user.authenticate(params[:password])
      byebug
      render json: @user
   else
      render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
 end
  end

def handle_login
 
   @user=User.find_by(userName: params[:userName])
   if @user && @user.authenticate(params[:password])
      render json: @user
   else
      render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
 end
end

def update
   @user=User.find(params[:id])
   @user.update(name: params[:name], userName: params[:userName])
   render json: @user
end

private
def user_params
    params.permit(:name, :userName, :password)
 end

end
