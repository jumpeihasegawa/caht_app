class LoginsController < ApplicationController
    def login
        user = User.find_user('login', 'pass')

        render json: user
    end
end
