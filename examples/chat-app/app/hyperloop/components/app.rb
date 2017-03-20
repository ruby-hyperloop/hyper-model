# The main app
class App < Hyperloop::Component
  def render
    DIV do
      Nav()
      if MessageStore.online?
        Messages()
        InputBox()
      end
    end
  end
end
