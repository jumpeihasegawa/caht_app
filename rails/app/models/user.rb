class User < ApplicationRecord
    def self.find_user(login_id, password)
        user = self.find_by(login_id: login_id, password: password)
        userFactory = Factories::UserFactory.new(user)

        return userFactory.make_user()
    end
end
