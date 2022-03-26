# frozen_string_literal: true

Rails.application.reloader.to_prepare do
  ActiveSupport.on_load :action_controller do
    ActionController::Base.helper MyHelper
  end
end
