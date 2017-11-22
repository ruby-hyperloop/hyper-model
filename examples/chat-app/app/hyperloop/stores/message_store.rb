# Store for Messages and the current User Name
class MessageStore < Hyperloop::Store
  state :user_name, scope: :class, reader: true

  def self.online?
    state.user_name
  end

  def self.all
    Message.all
  end

  receives Operations::Join do |params|
    puts "receiving Operations::Join.run(#{params})"
    mutate.user_name params.user_name
  end
end
