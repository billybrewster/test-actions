require 'govuk_tech_docs'

GovukTechDocs.configure(self)

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch   = 'develop' # default: gh-pages
end

configure :build do
  # Generate relative paths to the repo when deploying to GitHub Pages
  config[:http_prefix] = '/test-actions'
  #config[:css_dir] = ""
  config[:js_dir] = ""
  # activate :minify_css
  # activate :minify_javascript
end
