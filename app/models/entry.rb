class Entry < ActiveRecord::Base
  has_many :best_in_show_votes, dependent: :destroy
  has_many :most_decorative_votes, dependent: :destroy
  has_many :most_delicious_votes, dependent: :destroy
  has_many :most_traditional_votes, dependent: :destroy
end
