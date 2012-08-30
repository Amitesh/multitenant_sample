Apartment.configure do |config|
  # set your options (described below) here
  
  # these models will not be multi-tenanted, but remain in the global (public) namespace
  config.excluded_models = ["Tenant"]       # For delayed job add delayed job model in public schema "Delayed::Job"
  
  #config.default_schema = "public_new"
  
  # Dynamically get database names to migrate
  config.database_names = lambda{ Tenant.select(:id).collect{| tenant | "#{ Tenant::TENANT_SCHEMA_PREFIX }#{ tenant.id }" } }
  
end