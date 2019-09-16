class Factories::UserFactory
    def initialize(user)
        @user = user
    end

    def make_user()
        return Domains::User.new(@user.login_id, @user.password)
    end
end
