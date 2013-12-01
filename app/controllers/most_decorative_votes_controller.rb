class MostDecorativeVotesController < ApplicationController
  def create
    entry = Entry.find(params[:entry_id])
    most_decorative_vote = entry.most_decorative_votes.build
    most_decorative_vote.save!
    redirect_to(entries_path)
  end
end
