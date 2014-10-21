json.array!(@posts) do |post|
  json.extract! post, :id, :title, :desciption
  json.url post_url(post, format: :json)
end
