class Factories::MessageFactory
    def initialize(messages)
        @messages = messages
    end

    def make_messages()
        return Domains::Messages.new(@messages)
    end
end
