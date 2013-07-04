Todo::Application.routes.draw do
  resources :projetos do
    resources :tarefas, :except => [:show]
    member do
      get :colaboradores
      post :adicionar_coordenador
    end
  end

  resources :colaboradores

  root :to => 'projetos#index'
end
