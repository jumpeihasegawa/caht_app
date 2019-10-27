Rails.application.routes.draw do
  post '/login', to: 'logins#login'

  post '/talkroom/create', to: 'talk_rooms#create_talk_room'
  get  '/talkroom/find'  , to: 'talk_rooms#find_room_names'

  get  'message/find(:talk_rooms_id)', to: 'messages#find_messages'
  post 'message/create',               to: 'messages#create_message'
  post 'message/delete',               to: 'messages#delete_message'
end
