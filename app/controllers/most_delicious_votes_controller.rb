class MostDeliciousVotesController < ApplicationController
  def create
    entry = Entry.find(params[:entry_id])
    most_delicious_vote = entry.most_delicious_votes.build
    most_delicious_vote.save!
    redirect_to(entries_path)
  end
end
