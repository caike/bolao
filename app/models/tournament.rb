class Tournament < ActiveRecord::Base
  has_many :stages, class_name: 'Event', dependent: :destroy
end
