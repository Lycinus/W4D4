class UsersController < ApplicationController
    
    def new
        render :new
    end

    def create
        user = User.new(user_params)
        if user.save
            login!(user)
            redirect_to bands_url
        else
            redirect_to bands_url
            flash.now[:errors] = "Could not save user!"
        end
    end

    def show
        render :show
    end

    private

    def user_params
        params.require(:user).permit(:email, :password_digest, :session_token, :password)
    end
end