class Tenant < ActiveRecord::Base
  TENANT_SCHEMA_PREFIX = "tenant_"
  attr_accessible :domain_url, :name
end
