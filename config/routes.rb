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
  get "*request_path"=>"backend/static_pages#render_page", :constraints=>lambda{|req| !req.path.match(/\.(png|jpg|css|js)$/)}
  mount Ckeditor::Engine => "/ckeditor"
end
