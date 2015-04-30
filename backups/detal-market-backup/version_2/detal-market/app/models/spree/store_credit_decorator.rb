Spree::StoreCredit.class_eval do
  Spree::Config[:use_store_credit_minimum] = 0.01
end
