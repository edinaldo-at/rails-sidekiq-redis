require 'sidekiq/web'

Rails.application.routes.draw do
  if defined?(Sidekiq) && defined?(Sidekiq::Web)
    mount Sidekiq::Web => '/sidekiq'
  end
end
