set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/images'
set :relative_links, true

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
