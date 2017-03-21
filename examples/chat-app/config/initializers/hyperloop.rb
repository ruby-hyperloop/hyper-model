Hyperloop.configuration do |config|
  config.transport = :action_cable
  config.import 'active_support'
  config.import 'bootstrap-sprockets', client_only: true
  config.import 'marked', client_only: true
end
