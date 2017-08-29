json.array! @recipes do |product|
  json.id recipe.id
  json.title recipe.title
  json.image recipe.image_url
  json.description recipe.description
end