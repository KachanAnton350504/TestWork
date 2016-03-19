require 'grape-swagger'

class API < Grape::API
  mount Authors::Data
  mount Users::Data
  add_swagger_documentation api_version: 'v1'
end