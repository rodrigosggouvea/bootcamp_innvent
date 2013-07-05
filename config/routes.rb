Todo::Application.routes.draw do
  resources :projetos do
    resources :tarefas, :except => [:show] do
      member do
        post :finalizar
      end
    end
    member do
      get :colaboradores
      post :adicionar_coordenador
    end
  end

  resources :colaboradores

  root :to => 'projetos#index'
end
