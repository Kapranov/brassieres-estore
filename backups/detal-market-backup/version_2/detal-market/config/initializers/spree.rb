# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |c|
  # Example:
  # Uncomment to override the default site name.
  c.site_name = "Detal Market" 
  #if I18n.locale == :en
  #  config.site_name = Spree.t('title_name')
  #elsif I18n.locale == :ru
  #  config.site_name = Spree.t('title_name')
  #elsif I18n.locale == :uk
  #  config.site_name = Spree.t('title_name')
  #end
end

Spree.user_class = "Spree::User"
SpreeI18n::Config.available_locales = [:ru, :uk, :en]
SpreeI18n::Config.supported_locales = [:ru, :uk, :en]

# https://github.com/spree/spree_social
# Spree::SocialConfig[:path_prefix] = 'member' # for /member/auth/:provider
# Spree::SocialConfig[:path_prefix] = 'profile' # for /profile/auth/:provider
# Spree::SocialConfig[:path_prefix] = '' # for /auth/:provider

SpreeEditor::Config.tap do |config|
  config.ids = 'product_description page_body event_body'
end
