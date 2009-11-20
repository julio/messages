namespace :messages do
  desc "Create Messages YAML file in the config directory"
  
  task(:setup) do
    puts "Creating #{RAILS_ROOT}/config/messages.yml"
    messages = File.new("#{RAILS_ROOT}/config/messages.yml", "w")
    messages.puts(
      "greetings:\n  hello: Hi There!\n  yo: How have you been\n  sup: And how are ya?\n\n" +
      "books:\n  turing: The Annotated Turing\n  cocoa: Cocoa Programming for Mac OS X\n  cookbook: Rails Cookbook\n"
    )
  end
end
