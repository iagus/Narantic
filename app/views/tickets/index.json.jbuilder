json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :description, :created_at
  json.url ticket_url(ticket, format: :json)
end
