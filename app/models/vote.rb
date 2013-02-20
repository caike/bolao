class Vote < ActiveRecord::Base
  belongs_to :category
  belongs_to :nominee
  belongs_to :user

  def self.create_for_user!(user, params)
    transaction do
      find_or_initialize_by(params.slice(:category_id)).tap do |vote|
        vote.nominee_id = params[:nominee_id]
        vote.user = user
        vote.save!
      end
    end
  end
end
