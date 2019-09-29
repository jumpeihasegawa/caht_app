class Domains::RoomNames
    def initialize(room_names)
        @room_names = []

        room_names.each do |room_name|
            @room_names << {
                id:        room_name.id,
                room_name: room_name.room_name
            }
        end
    end
end
