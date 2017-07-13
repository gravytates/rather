class VotesController < ApplicationController
  def create
    @option = Option.find(params.fetch(:option_id))
    vote = @option.votes.new(user_id: current_user.id)
    vote.save
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end
end
