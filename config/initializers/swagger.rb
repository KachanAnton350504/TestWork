if defined? GrapeSwaggerRails
  GrapeSwaggerRails.options.url      = '/swagger_doc.json'
  GrapeSwaggerRails.options.app_name = 'Internet-Shop'
  GrapeSwaggerRails.options.app_url  = '/'

  GrapeSwaggerRails.options.authenticate_with do |request|
    current_admin_user.present?
  end
end
