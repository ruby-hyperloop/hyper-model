class Messages < Hyperloop::Store
  class SendToAll < Hyperloop::ServerOp
    param :acting_user, nils: true
    param :message
  end
  state messages: [], scope: :class, reader: :all
  receives(SendToAll) { |params| mutate.messages << params.message }
end
