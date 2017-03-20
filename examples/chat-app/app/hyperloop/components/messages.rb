# display all messages
class Messages < Hyperloop::Component
  render(DIV, class: 'container') do
    MessageStore.all.each do |message|
      DisplayMessage message: message
    end
  end
end
