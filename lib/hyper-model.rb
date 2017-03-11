require "hyperloop/component/version"
require 'hyperloop-config'

Hyperloop.require_gem 'hyper-component'
Hyperloop.require_gem 'hyper-model'

if RUBY_ENGINE == 'opal'
  module Hyperloop
    # defining this before requring hyper-mesh will turn off
    # the hyper-mesh deprecation notice
  end
  require 'hyper-mesh'
else
  require 'opal'
  require 'hyper-mesh'
  Opal.append_path(File.expand_path('../', __FILE__).untaint)
end
