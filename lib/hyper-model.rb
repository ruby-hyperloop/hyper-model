require "hyperloop/model/version"
require 'hyperloop-config'

Hyperloop.import 'hyper-component'
Hyperloop.import 'hyper-model'

if RUBY_ENGINE == 'opal'
  require 'hyper-mesh'
else
  require 'opal'
  require 'hyper-mesh'
  Opal.append_path(File.expand_path('../', __FILE__).untaint)
end
