class UsersController < ApplicationController

    def create
        user = User.new
        user.datas = params[:datas]
        user.ffts = params[:ffts]
        user.save
        console.log
        user.name = user.id
        user.save
        redirect_to user_path(user)
    end
end
