module All
  class Data < Grape::API

    resource :all do
      resource :authors do
        desc "List all Authors"
        get do
          Author.all
        end

        desc "create a new Author"
        params do
          requires :name, type: String
          requires :foto, type:String
          requires :biography, type:String
        end
        post do
          Author.create!({
            name:params[:name],
            foto:params[:foto],
            biography:params[:biography]
          })
        end

        desc "delete an Author"
        params do
          requires :id, type:Integer 
        end
        delete ':id' do
          Author.find(params[:id]).destroy!
        end

        desc "update an Author biography"
        params do 
          requires :id, type:Integer  
          requires :biography, type:String
        end
        put ':id' do
          Author.find(params[:id]).update({biography:params[:biography]})
        end
      end
      
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
end