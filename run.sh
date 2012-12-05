RAILS_ENV=production
nohup unicorn_rails -c config/unicorn.rb -D &
