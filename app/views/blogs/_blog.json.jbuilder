json.extract! blog, :id, :title, :text, :category, :created_at, :updated_at
json.url blog_url(blog, format: :json)
