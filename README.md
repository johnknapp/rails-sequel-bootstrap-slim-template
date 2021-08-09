# rails-sequel-bootstrap-slim-template

## How to set up
1. Go to the project folder

2. Install dependencies
```
bundle install
```

3. Install webpacks
```
rails webpacker:install
```

4. Create db & migrate
```
rake db:create
rake db:migrate
```

5. uncomment the following line at config/routes.rb
```
# devise_for :users
to
devise_for :users
```

