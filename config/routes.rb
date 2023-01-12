# frozen_string_literal: true
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # De
  # PAGE DE BASE SI UNE ROUTE EST INVALIDE
  root to: 'pages#home'
  # UNE ROUTE GET AVEC UN PARAMS EN URL QUI RENVOI LA PAGE SALUT DANS LE DOSSIER VIEWS.
  # ON RECUPERE PARAMS DANS LE CONTROLLERS, ON LE REND OPTIONNEL GRACE AU PARENTHESE
  get '/salut(/:name)', to: 'pages#salut', as: 'salut'
end
