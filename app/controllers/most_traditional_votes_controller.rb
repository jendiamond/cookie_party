class MostTraditionalVotesController < ApplicationController
  def create
    entry = Entry.find(params[:entry_id])
    most_traditional_vote = entry.most_traditional_votes.build
    most_traditional_vote.save!
    redirect_to(entries_path)
  end
end
