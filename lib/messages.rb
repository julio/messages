module Messages
  def self.[](key)
    a,b = key.split('/')
    @@MESSAGES ||= YAML.load(File.read("#{RAILS_ROOT}/config/messages.yml"))
    @@MESSAGES[a][b] || "*** No message found for #{key} ***"
  end

  def self.get(message_key, *args)
    message = self[message_key]
    args.each_with_index do |argument, index|
      message = message.gsub("{#{index}}", argument)
    end
    message
  end
end
