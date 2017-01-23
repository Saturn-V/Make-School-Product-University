json.extract! post, :id, :title, :body, :created_at, :updated_at

json.url post_url(post, format: :json)

json.comments post.comments.last(3) do |comment|
    json.(comment, :id, :post_id, :body, :created_at, :updated_at)
end
