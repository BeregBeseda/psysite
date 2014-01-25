json.array!(@example1s) do |example1|
  json.extract! example1, :title
  json.url example1_url(example1, format: :json)
end
