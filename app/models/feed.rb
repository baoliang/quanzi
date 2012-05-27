class Feed
  include Mongoid::Document
  field :created_at, :type => Time
  field :text, :type => String
  field :user, :type => Object
end
