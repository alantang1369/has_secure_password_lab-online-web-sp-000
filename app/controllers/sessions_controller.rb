class SessionsController < ApplicationController

    def new

    end

    def create 
        #user = User.find_by(name: params[:user][:name])
        #user = user.try(:authenticate, params[:user][:password])
        #return redirect_to(controller: 'sessions', action: 'new') unless user
        @user = User.find_by(name: params[:user][:name])
        return redirect_to '/login' unless @user.try(:authenticate, params[:user][:password])
        session[:user_id] = @user.id
       # @user = user
        redirect_to  'users/home'
    
    end

    def destroy
        
    end
end