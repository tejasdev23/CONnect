json.array!(@rotters) do |rotter|
  json.extract! rotter, :id, :name, :email
  json.url rotter_url(rotter, format: :json)
end
