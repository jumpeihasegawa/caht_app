class TalkRoom < ApplicationRecord
    def self.create_talk_room(room_name)
        begin
            self.create!(room_name: room_name)
            return true
        rescue
            return false
        end
    end

    def self.find_room_names
        room_names = self.all().order('created_at DESC')
        talk_room_factory = Factories::TalkRoomFactory.new(room_names)

        return talk_room_factory.make_room_names()
    end
end
