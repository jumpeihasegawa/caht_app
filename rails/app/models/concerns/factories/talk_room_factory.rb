class Factories::TalkRoomFactory
    def initialize(room_names)
        @room_names = room_names
    end

    def make_room_names()
        return Domains::RoomNames.new(@room_names)
    end
end
