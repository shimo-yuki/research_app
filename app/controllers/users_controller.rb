class UsersController < ApplicationController
    protect_from_forgery
    def index
        @users = User.all
        @user_arr = @users.to_json.html_safe
    end

    def show
        @user = User.find(params[:id])
        @user_arr = @user.to_json.html_safe
    end
    def create
        user = User.new
        binding.pry
        user.frequencies = params[:frequencies]
        user.ffts = params[:ffts]
        user.save
        user.name = user.id
        user.save
        redirect_to user_path(user)
    end
end
