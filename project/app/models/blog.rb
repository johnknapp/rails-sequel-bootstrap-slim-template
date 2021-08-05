class Blog < Sequel::Model
  Blog.plugin :timestamps, update_on_create: true
end
