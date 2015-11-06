module KcNotifications
  class Notification
    include Mongoid::Document
    include Mongoid::Timestamps
    field :kind,  :type => String
    field :info, :type => Hash
    scope :with_kind, ->(query_kind){ where(kind: query_kind) }
    belongs_to :user,:class_name => KcNotifications.user_class
  end
end