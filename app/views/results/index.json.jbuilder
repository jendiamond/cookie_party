json.array!(@results) do |result|
  json.extract! result, :award_id, :entry_id, :user_id
  json.url result_url(result, format: :json)
end
