Todo::Application.routes.draw do
  resources :projetos do
    resources :tarefas, :except => [:show]
  end

  root :to => 'projetos#index'
end
