class Friendship < ActiveRecord::Base
  belongs_to :actor
  belongs_to :friend, :class_name => 'Actor'
end