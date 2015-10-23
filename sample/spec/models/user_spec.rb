require 'rails_helper'

RSpec.describe KcNotifications::Notification, type: :model do
  describe '使用方法 user.notifications.create' do
    it{
      user_tom = create(:user)
      info = '早上好'
      user_tom.notifications.create(:kind => "system", :info => info)
      expect(user_tom.notifications.count).to eq(1)
      expect(user_tom.notifications.last.kind).to eq("system")
    }
  end
  describe '使用方法scope' do
    it 'user.notifications.with_kind'do
      user_tom = create(:user)
      info1 = '系统消息'
      info2 = '邮件消息'
      user_tom.notifications.create(:kind => "system", :info => info1)
      expect(user_tom.notifications.with_kind("system").first.info).to eq(info1)
      user_tom.notifications.create(:kind => "message", :info => info2)
      expect(user_tom.notifications.with_kind("message").first.info).to eq(info2)
    end
  end
end