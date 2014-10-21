json.array!(@pictures) do |picture|
  json.extract! picture, :id, :desciption, :art, :integer, :file
  json.url picture_url(picture, format: :json)
end
