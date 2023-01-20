# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users
  # root est la page d'acceuil, l'url de la page d'acceuil est /,
  # on redirige vers le controller pages et la view home
  root to: 'pages#home'
  # Ici l'url de la route sera dynamique, on pourra passer en parametre url du type /salut/ton_nom
  # Cette route permet ne sert a rien, c'est juste pour montrer comment on peut passer des parametres dans l'url
  get '/salut(/:name)', to: 'pages#salut', as: 'salut'
  # utilisateurs :posts permet de créer toutes les routes pour le controller posts (voir le fichier app/controllers/posts_controller.rb)
  delete 'posts/:id', to: 'posts#destroy', as: :delete_post
  resources :posts
  resources :utilisateurs
end
