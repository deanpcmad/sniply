Sniply::Application.routes.draw do
	
  root "home#index"

	get "/auth/:provider/callback", to: "sessions#create"
	delete "/signout", to: "sessions#destroy", as: :signout

	get "/mine", to: "snippets#mine", as: :mine

	resources :snippets, only: [:create, :destroy, :update]

	get ":code/edit", to: "snippets#edit", as: :edit_snippet

	get ":code", to: "snippets#show", as: :snip

end