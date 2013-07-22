json.array!(@posts) do |post|
  json.extract! post, :slug, :published, :title, :content
  json.url post_url(post, format: :json)
end
