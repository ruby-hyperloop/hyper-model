require "hyperloop/component/version"
require 'hyperloop-config'
Hyperloop.require_gem 'react/react-source-browser', client_only: true # move to hyper-component once things are working
Hyperloop.require_gem 'opal-jquery', override_with: :opal_jquery, client_only: true # move to hyper-component once things are working
Hyperloop.require_gem 'browser/delay', override_with: :browser_delay, client_only: true # move to hyper-component once things are working

Hyperloop.require_gem 'hyper-component'
Hyperloop.require_gem 'hyper-model'
Hyperloop.require_gem 'react_ujs', client_only: true # move to hyper-component once things are working

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
