require 'grape-swagger'

class API < Grape::API

  mount Authors::Data
  mount Users::Data
  mount All::Data

   add_swagger_documentation mount_path: "api"
end