ActiveAdmin.register Location do
  permit_params :name, :region_id, :city_id, :district_id, :ip_address
end
