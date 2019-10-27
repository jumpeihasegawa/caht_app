class Domains::Messages
    def initialize(messages)
        @messages = []

        messages.each do |message|
            @messages << {
                id:       message.id,
                users_id: message.users_id,
                text:     message.text,
                image:    message.image
            }
        end
    end
end
