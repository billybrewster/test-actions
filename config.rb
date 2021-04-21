require 'govuk_tech_docs'

GovukTechDocs.configure(self)

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch   = 'develop' # default: gh-pages
end
