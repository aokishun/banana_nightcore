Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => "registrations"
  }
  get 'users/:id' => 'users#show', as: :user

  #devise_for :users
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'ranking_week' => 'home#ranking_week'
  get 'ranking_month' => 'home#ranking_month'
  get 'ranking_year' => 'home#ranking_year'


end
