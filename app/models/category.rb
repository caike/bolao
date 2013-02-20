class Category < ActiveRecord::Base
  has_many :nominees, dependent: :destroy
end
