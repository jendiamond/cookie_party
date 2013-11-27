class Entry < ActiveRecord::Base
  has_many :best_in_show_votes, class_name: "VoteCard", inverse_of: :best_in_show
  has_many :most_delicious_votes, class_name: "VoteCard", inverse_of: :most_delicious
  has_many :most_decorative_votes, class_name: "VoteCard", inverse_of: :most_decorative
  has_many :most_traditional_votes, class_name: "VoteCard", inverse_of: :most_traditional

end
