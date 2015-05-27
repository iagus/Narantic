json.array!(@urgencies) do |urgency|
  json.extract! urgency, :id, :level
  json.url urgency_url(urgency, format: :json)
end
