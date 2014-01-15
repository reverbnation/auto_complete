# -*- encoding: utf-8 -*-

require 'auto_complete/controller_methods'
require 'auto_complete/macros_helper'
require 'auto_complete/version'

module AutoComplete
  class Engine < Rails::Engine
    initializer 'auto_complete.initialize' do
      ActiveSupport.on_load(:action_controller) do
        ActionController::Base.class_eval do
          include AutoComplete::ControllerMethods
        end
        ActionController::Base.helper AutoComplete::MacrosHelper
      end
    end
  end
end
