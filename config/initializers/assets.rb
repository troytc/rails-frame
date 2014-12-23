# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Enable controller-specific assets. Thanks StackOverflow!
controllers = []
Dir['app/controllers/*.rb'].each do |file|
  controllers.push(file.split('/').last.sub!('_controller.rb', ''))
end

controllers.each do |controller|
  Rails.application.config.assets.precompile += %W(#{controller}.css #{controller}.js)
end
