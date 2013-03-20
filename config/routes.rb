Skara::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  root to: "home#index"
  namespace :backend do
    root to: "products#index"
    resources :products do
      post :deactivate_widgets
    end
    resources :widgets
    resources :static_pages
  end
  match ':title', :controller => 'viewer', :action => 'show'
end
