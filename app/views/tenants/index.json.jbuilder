json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :name
  json.url tenant_url(tenant, format: :json)
end
