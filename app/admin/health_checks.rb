ActiveAdmin.register HealthCheck do

  action_item only: :index do
    link_to 'EXPORT CSV', exports_path(format: 'csv'), method: :post
  end

  index do
    selectable_column
    id_column
    column :region do  |health_check|
      health_check.location.region&.name
    end
    column :city do  |health_check|
      health_check.location.city&.name
    end
    column :ip do |health_check|
      health_check.location.ip_address
    end
    column :success
    column :created_at
    actions
  end


  controller do
    def scoped_collection
      super.includes(location: [:city, :region])
    end
  end
end
