class Event < ActiveRecord::Base

  has_many :categories, dependent: :destroy

  def self.upcoming
    where('airs_on > ?', Time.now).order(airs_on: :asc).take
  end

  def self.most_recent
    where('airs_on < ?', Time.now).order(airs_on: :asc).take
  end
end
