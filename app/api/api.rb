require 'grape-swagger'

class API < Grape::API

  mount Authors::Data
  mount Users::Data
  mount All::Data

   add_swagger_documentation(
      base_path: "/api",
      mount_path: "api",
      hide_documentation_path: false,
      api_documentation: { desc: 'Reticulated splines API swagger-compatible documentation.' }
    )
end