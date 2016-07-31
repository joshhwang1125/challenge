json.array! @bundles do |bundle|
  json.id bundle.id
  json.title bundle.title
  json.artist bundle.artist
  json.description bundle.description
  json.background_url bundle.background_url
  json.thumbnail_url bundle.thumbnail_url
end