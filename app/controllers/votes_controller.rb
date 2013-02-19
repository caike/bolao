class VotesController < ApplicationController
  def create
    Rails.logger.info(params)
    head :ok
  end
end
