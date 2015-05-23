class Originator < ActiveRecord::Base
  include FriendlyId
  friendly_id :title, use: :slugged
end
