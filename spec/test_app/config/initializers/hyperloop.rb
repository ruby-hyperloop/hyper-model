Hyperloop.configuration do |config|
  config.transport = :simple_poller
  # slow down the polling so wait_for_ajax works
  config.opts = { seconds_between_poll: 3 }
  #config.browser_delay = 'fred'
end
