class TalkRoom < ApplicationRecord
    def self.create_talk_room(room_name)
        begin
            self.create!(room_name: room_name)
            return true
        rescue
            return false
        end
    end
end
