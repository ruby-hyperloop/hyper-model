module Operations
  # add a message
  class Send < Hyperloop::Operation
    param :message
    param :user_name

    step { Message.create(message: params.message, from: params.user_name) }
  end
  # register user
  class Join < Hyperloop::Operation
    param :user_name
  end
end
