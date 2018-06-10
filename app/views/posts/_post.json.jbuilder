json.extract! post, :id, :body, :post_type, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
