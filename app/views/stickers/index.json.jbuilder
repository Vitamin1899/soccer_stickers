json.array!(@stickers) do |sticker|
  json.extract! sticker, :id, :image
  json.url sticker_url(sticker, format: :json)
end
