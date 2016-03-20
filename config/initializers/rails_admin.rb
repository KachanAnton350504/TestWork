RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at 
config.model Book do
  edit do
    field :name
    field :image, :rich_picker do
      config({:allowed_styles => [:thumb]})
    end
    field :status
    field :vendor_code
    field :weight
    field :price
    field :series
    field :subjects
    field :limit_age
    field :time_status
    field :description_product, :rich_editor do
      config({:insert_many => true})
    end
    field :description_book, :rich_editor do
      config({:insert_many => true})
    end
    field :author
    field :part_of_catalog
    field :users
  end
end

config.model Author do
    field :name
    field :foto, :rich_picker do
      config({:allowed_styles => [:thumb],
              :view_mode => "list"})
    end
    field :biography, :rich_editor do
      config({:insert_many => true})
    end
    field :books
end

config.model PartOfCatalog do
    field :title
    field :description, :rich_editor do
      config({:insert_many => true})
    end
    field :catalog
    field :books
end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
