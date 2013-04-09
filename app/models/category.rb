class Category < ActiveRecord::Base
  belongs_to :event # turno
  has_many :nominees, dependent: :destroy
end
