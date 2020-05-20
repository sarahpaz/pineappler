Rails.application.routes.draw do
	devise_for :users
	
	resources :tasks
	resources :entity_tasks
	resources :goals
<<<<<<< HEAD
	resources :users
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	devise_scope :user do
		authenticated :user do
			root 'users#show', as: :authenticated_root
		end

		unauthenticated do
			root 'users/sessions#new', as: :unauthenticated_root
		end
	end
=======
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root :to => "home#index"
>>>>>>> fe8b21f... set up root route
end
