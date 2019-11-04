class MessagesController < ApplicationController
    def find_messages
        messages = Message.find_messages(params[:talk_rooms_id])

        render json: messages
    end

    def create_message
        is_create = Message.create_message(
            params[:users_id],
            params[:talk_rooms_id],
            params[:text],
            params[:image]
        )

        render json: is_create
    end

    def delete_message
        is_delete = Message.delete_message(params[:messages_id])

        render json: is_delete
    end
end
