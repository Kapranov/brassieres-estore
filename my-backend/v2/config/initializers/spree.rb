#
# Its pretty much easy you can set these options in your app/config/initializers/spree.rb
#
# Spree.config do |config|
#
#  # Set Country name and Currency like this(Note: you will need to run 'rake db:seed' before this. Change country name in Spree::Country.find_by_name('United Kingdom') replace united kingdom to your desire one)
#  config.currency = 'EUR'
#  country = Spree::Country.find_by_name('United Kingdom')
#  config.default_country_id = country.id if country.present?
#
#  # You can also set following options too.
#
#  config.site_name = "Todo Store"
#  config.override_actionmailer_config = true
#  config.enable_mail_delivery = true
#
#  end
#end
#

Spree.config do |config|
  config.logo = "logo.png"
  config.admin_interface_logo = 'logo.png'
end

Spree.user_class = "Spree::User"
SpreeI18n::Config.available_locales = [:ru, :uk, :en]
SpreeI18n::Config.supported_locales = [:ru, :uk, :en]
