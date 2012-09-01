Sniply::Application.routes.draw do
	root :to => "home#index"

	match "/auth/:provider/callback" => "sessions#create"
	match "/signout" => "sessions#destroy", :as => :signout

	match "/mine" => "snippets#mine", :as => :mine

	resources :snippets, :only => [:create, :destroy, :update]

	match ":code/edit" => "snippets#edit", :as => :edit_snippet

	match ":code" => "snippets#show", :as => :snip
end
