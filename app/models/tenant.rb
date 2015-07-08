class Tenant < ActiveRecord::Base



  after_create :create_tenant

  #??do we need to drop the schema when destroy the tenants


  private

  def create_tenant
    Apartment::Tenant.create(subdomain)
  end

end
