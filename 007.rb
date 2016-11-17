class Messenger
  def message
    resource = self.class.name.match(/(.*)Messenger/)[1]
    "#{resource.downcase} message"
  end
end

resource = %w{Text Picture Video Document}

resource.each do |resource|
  eval("class #{resource}Messenger < Messenger; end")
end

class SlackMessenger
  def message(messenger)
    messenger.message
  end
end
