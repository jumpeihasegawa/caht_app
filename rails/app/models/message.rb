class Message < ApplicationRecord
    def self.find_messages(talk_rooms_id)
        messages = self.where(talk_rooms_id: talk_rooms_id).order('id ASC')
        messageFactory = Factories::MessageFactory.new(messages)

        return messageFactory.make_messages()
    end

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

    def self.delete_message(messages_id)
        begin
            message = self.find_by!(id: messages_id)
            message.destroy!

            return true
        rescue 
            return false
        end
    end
end
