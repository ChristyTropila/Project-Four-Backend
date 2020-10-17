class UsersController < ApplicationController

 def index
    @users=User.all
    render json: @users
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

private
def user_params
    params.permit(:name, :userName, :password)
 end
end
