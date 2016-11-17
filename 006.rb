class Messenger
  def message
    head = self.class.name.match(/(.*)Messenger/)[1]
    "#{head.downcase} message"
  end
end

class TextMessenger < Messenger; end
class PictureMessenger < Messenger; end
class VideoMessenger < Messenger; end

class SlackMessenger
  def message(messenger)
    messenger.message
  end
end
