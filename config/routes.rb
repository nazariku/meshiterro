Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  #resources メソッドは、ルーティングを一括して自動生成してくれる機能
  #onlyオプションで、生成するルーティングを限定
  resources :post_images, only: [:new, :create, :index, :show]
  get "/homes/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
