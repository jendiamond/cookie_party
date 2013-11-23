json.array!(@awards) do |award|
  json.extract! award, :award_name
  json.url award_url(award, format: :json)
end
