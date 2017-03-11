class SendToAll < Hyperloop::ServerOp
  param acting_user: nil, nils: true
  param :message
  dispatch_to { Application }
end
