class BestInShowVotesController < ApplicationController
  def create
    entry = Entry.find(params[:entry_id])
    best_in_show_vote = entry.best_in_show_votes.build
    best_in_show_vote.save!
    redirect_to(entries_path)
  end
end
