class VotesController < ApplicationController
  def create
    Vote.create!(vote_params)
    head :ok
  end


  private

    def vote_params
      params.require(:vote).permit(:nominee_id, :category_id)
    end

end

