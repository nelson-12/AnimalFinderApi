      
      Requisistos:
      ruby '2.7.1'
      'rails', '~> 6.0.3', '>= 6.0.3.1'
      
      Instalado
      redis
      mini-magick
      
      Inicializa
      active storage
      rails active_storage:install
      
      Primeira inicialização
      lembra de alterar o cors para a aceitar a url do front
      rails db:migrate
      rails s
       
      Api's
      
      post 'animal', 
      parametro={:name, :age, :extra_information, :state, :city, :status, :photo}
      
      get 'animal', 
      
      
      get 'animal/list', 
      
      get 'animal/:id',
      parametros={:id}
      
      patch 'animal/:id', 
      parametros={:id, :name_finder, :phone_number_finder, :status }
      
      put 'animal/:id', 
      parametros={:name, :age, :extra_information, :state, :city, :status }
      
      delete 'animal/:id', 
      parametros={:id}
      
      post 'refresh', 
        
      post 'signin',
      parametros={:email, :password}
        
      post 'signup', 
      parametros={:name, :email, :phone_number, :password, :password_confirmation }
        
      delete 'signin', 
      parametros={:id}
      
      
