json.array!(@novels) do |novel|
  json.extract! novel, :id, :title, :year, :cover, :plot, :author_id
  json.url novel_url(novel, format: :json)
end
