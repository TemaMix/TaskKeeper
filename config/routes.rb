TaskKeeper::Application.routes.draw do


  root :to => "tasks#index"

  namespace :api, defaults: {format: :json} do
    resources :tasks
  end


  get '/' => 'tasks#index'
  get '/tasks/:id' => 'tasks#index'
  get '/templates/:path.html' => 'tasks#template', :constraints => { :path => /.+/  }
end
