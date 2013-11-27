json.array!(@vote_cards) do |vote_card|
  json.extract! vote_card, :name
  json.url vote_card_url(vote_card, format: :json)
end
