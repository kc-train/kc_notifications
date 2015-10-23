module KcNotifications
  class Engine < ::Rails::Engine
    isolate_namespace KcNotifications
    config.to_prepare do
      ApplicationController.helper ::ApplicationHelper
      User.class_eval do
        has_many :notifications, class_name: 'KcNotifications::Notification'
      end
    end
  end
end