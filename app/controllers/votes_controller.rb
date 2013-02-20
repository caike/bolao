class VotesController < ApplicationController
  def create
    Vote.create_for_user!(current_user, vote_params)
    head :ok
  end


  private

    def vote_params
      params.require(:vote).permit(:nominee_id, :category_id)
    end

end

