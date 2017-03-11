require 'opal'
require 'react/react-source-browser'
require 'hyper-model'
puts 'before false'
if Hyperloop.on_client?
  require 'opal-jquery'
  require 'browser/delay'
end
puts 'after false'
#require_tree './models'
require_tree './components'

# # app/views/components.rb
# require 'opal'
# require 'react/react-source'
# require 'hyper-react'
# if React::IsomorphicHelpers.on_opal_client?
#   require 'opal-jquery'
#   require 'browser'
#   require 'browser/interval'
#   require 'browser/delay'
#   # add any additional requires that can ONLY run on client here
# end
# require 'hyper-mesh'
# require_tree './models'
# require_tree './components'
