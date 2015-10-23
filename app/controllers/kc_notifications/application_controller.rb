module KcNotifications
  class ApplicationController < ActionController::Base
    layout "kc_notifications/application"

    if defined? PlayAuth
      helper PlayAuth::SessionsHelper
    end
  end
end