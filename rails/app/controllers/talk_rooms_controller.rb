class TalkRoomsController < ApplicationController
    def create_talk_room
        is_create = TalkRoom.create_talk_room(params[:room_name])

        render json: is_create
    end

    def find_room_names
        room_names = TalkRoom.find_room_names()

        render json: room_names
    end
end
