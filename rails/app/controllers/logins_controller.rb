class LoginsController < ApplicationController
    def login
        user = User.find_user(params[:login_id], params[:password])

        render json: user
    end
end
