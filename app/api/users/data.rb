module Users
  class Data < Grape::API

    resource :users do
      
      desc "List all Users"
      get do
        User.all
      end

      desc "create a new User"
      params do
        requires :email, type: String
        requires :password, type:String
      end
      post do
        User.create!({
          email:params[:email],
          password:params[:password],
        })
      end

      desc "delete an User"
      params do
        requires :id, type:Integer 
      end
      delete ':id' do
        User.find(params[:id]).destroy!
      end
    end


  end
end