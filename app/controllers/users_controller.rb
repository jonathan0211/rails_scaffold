class UsersController < ApplicationController
    def index        
        render json: User.page(params[:page]).per(params[:per] ? params[:per] : 10) 
    end
end