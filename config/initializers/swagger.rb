if defined? GrapeSwaggerRails
  GrapeSwaggerRails.options.url      = '/api/all.json'
  
  GrapeSwaggerRails.options.before_filter_proc = proc {
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
}
  
  GrapeSwaggerRails.options.doc_expansion = 'list'
  GrapeSwaggerRails.options.app_name = 'Internet-Shop'
  GrapeSwaggerRails.options.app_url  = '/'
  GrapeSwaggerRails.options.authenticate_with do |request|
    current_admin_user.present?
  end
end
