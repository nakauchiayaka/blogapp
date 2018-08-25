Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  resources :blogs do
    member do
      post "add", to: "clips#create" #addというパスを後ろにつける→createに飛ぶ
    end
  end
  resources :users
  resources :clips, only: [:destroy, :index]
  # get 'blogs' => 'blogs#index'
  # get 'blogs/new' => 'blogs#new'
  # post 'blogs'  =>  'blogs#create'
  # delete 'blogs/:id' => 'blogs#destroy'
  # get 'blogs/:id/edit' => 'blogs#edit'
end
