module EntriesHelper
  def current_votes_for_category(category_id)
    return [] unless current_user
    current_user.votes.where(category_id: category_id).pluck(:nominee_id)
  end
end
