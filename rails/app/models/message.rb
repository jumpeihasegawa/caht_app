class Message < ApplicationRecord
    def self.create_message(users_id, talk_rooms_id, text, image)
        begin
            self.create!(
                users_id:      users_id,
                talk_rooms_id: talk_rooms_id,
                text:          text,
                image:         image
            )
            return true
        rescue
            return false
        end
    end
end
