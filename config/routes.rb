Rails.application.routes.draw do
  get 'pages/home'
  # Routes pour Devise (authentification)
  devise_for :users

  # Route pour la page d'accueil
  root 'pages#home'

  # Routes pour les tableaux de bord des utilisateurs
  resources :users, only: [:show] do
    resource :dashboard, only: [:show], controller: 'user_dashboards'
  end

  # Routes pour les plans d'entraînement
  resources :training_plans, only: [:index, :show] do
    member do
      post :select
    end
  end

  # Routes pour les exercices (si nécessaire)
  # resources :exercises, only: [:show]

  # Routes pour les entrées de calendrier (si nécessaire)
  # resources :schedule_entries, only: [:index, :update]
end
