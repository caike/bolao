class Category < ActiveRecord::Base
  belongs_to :event
  has_many :nominees, dependent: :destroy
end
