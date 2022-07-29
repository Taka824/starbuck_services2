# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w(
  header.scss
  login__header.scss
  footer.scss
  like.scss
  login.scss
  cup.scss
  post__index.scss
  post.scss
  tab.scss
  about.scss
  dignose.scss
  category.scss
  admin-category.scss
  admin-categories.scss
  search.scss
  pagenate.scss
  button-back-slide.scss
  like-index.scss
  article.scss
  categories.scss
  comment-post.scss
  show-post.scss
  button-border-slide
  post_form.scss
  post__index.js
  raty.js
  star__post.js
  post.js
  login__header.js
  tab.js
  admin.js
  admin.css
)
