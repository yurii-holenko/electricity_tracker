class ExportsController < ApplicationController
  def create
    @health_checks = HealthCheck.all
    respond_to do |format|
      format.csv { send_data @health_checks.to_csv }
    end
  end
end
