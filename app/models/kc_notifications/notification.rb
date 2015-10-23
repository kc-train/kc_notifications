module KcNotifications
  class Notification
    class << self
      def with_kind(query_kind)
        scope :query_kind, -> { where(kind: query_kind) }
        self.query_kind
      end
    end

    include Mongoid::Document
    include Mongoid::Timestamps
    field :kind,  :type => String
    field :info, :type => String
    belongs_to :user,:class_name => KcNotifications.user_class
  end
end