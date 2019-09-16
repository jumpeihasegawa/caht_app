class Domains::User
    def initialize(login_id, password)
        @login_id = login_id;
        @password = password;
    end

    def get_login_id
        return @login_id
    end
end
