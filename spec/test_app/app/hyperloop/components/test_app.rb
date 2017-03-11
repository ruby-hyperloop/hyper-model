class TestComp < Hyperloop::Component
  render(DIV) do
    puts "hello"
    DIV { 'hello' }
    UL do
      Messages.all.each do |message|
        LI { message }
      end
    end
    # if TodoItem.all.count == 0
    #   "No Todos"
    # else
    #   UL do
    #     TodoItem.each do |todo|
    #       LI { "#{todo.title}" }
    #     end
    #   end
    # end
  end
end
