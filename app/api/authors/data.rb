module Authors
  class Data < Grape::API

    resource :authors_data do
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
  end
end