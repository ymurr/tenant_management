
class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{www admin}
    request.subdomain.present? && !subdomains.include?(request.subdomain) && !request.subdomain.start_with?('www.')

  end
end

Rails.application.routes.draw do
  devise_for :users
  resources :tenants
   root 'tenants#index'



  constraints SubdomainConstraint do
    #put resources inside here if they are only available for subdomains
    resources :leases
  end
end
