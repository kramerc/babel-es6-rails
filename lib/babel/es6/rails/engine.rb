require 'rails/engine'

module Babel
  module Es6
    module Rails
      class Engine < ::Rails::Engine
        config.app_generators.javascript_engine :es6
      end
    end
  end
end
