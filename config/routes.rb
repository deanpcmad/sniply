Sniply::Application.routes.draw do
	root :to => "home#index"

	post "/auth/:provider/callback" => "sessions#create"
	delete "/signout" => "sessions#destroy", :as => :signout

	get "/mine" => "snippets#mine", :as => :mine

	resources :snippets, :only => [:create, :destroy, :update]

	get ":code/edit" => "snippets#edit", :as => :edit_snippet

	post ":code" => "snippets#show", :as => :snip
end
