class UsersController < ApplicationController
    # params = {"authenticity_token"=>"[FILTERED]", "user"=>{"username"=>"", "email"=>"", "password"=>"[FILTERED]"}
    def new
        
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to new_user_path
        else
            # Display the 422 status code, which means unprocessable entity
            puts '422 unprocessable entity'
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end