Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :casestudies do
    resources :casestudies, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :casestudies, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :casestudies, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
