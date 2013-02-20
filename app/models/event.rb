class Event < ActiveRecord::Base

  has_many :categories, dependent: :destroy

  def self.upcoming
    where('airs_on > ?', Time.now).order('airs_on').limit(1).first
  end
end
