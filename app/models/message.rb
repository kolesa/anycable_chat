class Message < ApplicationRecord
  after_create { ActionCable.server.broadcast 'room_channel', message: self.content }
end
