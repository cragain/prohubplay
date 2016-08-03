json.array!(@ragains) do |ragain|
  json.extract! ragain, :id, :guy
  json.url ragain_url(ragain, format: :json)
end
