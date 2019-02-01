class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user
            login!(@user)
            redirect_to bands_url
        else
            flash.now[:error] = "Email or password is incorrect"
        end
    end

    def destroy
        user = current_user
        if user
            user.reset_session_token!
            session[:session_token] = nil
        end
        redirect_to bands_url
    end
end