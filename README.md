##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby 2.6.5
- Rails 6.0.3.2

##### 1. Check out the repository

```bash
git@github.com:luvcjssy/simple_blog.git
```

##### 2. Go to project directory

```bash
cd <path_to_project>
```

##### 3. Install gem
```bash
bundle install
```
##### 4. Install libs
```bash
npm i
```

##### 5. Create database.yml file

Edit the database configuration as required.

```bash
config/database.yml
```

##### 6. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

##### 7. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000

Admin account: admin@example.com - password