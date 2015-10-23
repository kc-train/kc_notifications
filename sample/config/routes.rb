Rails.application.routes.draw do
  mount KcNotifications::Engine => '/', :as => 'kc_notifications'
  mount PlayAuth::Engine => '/auth', :as => :auth
end
