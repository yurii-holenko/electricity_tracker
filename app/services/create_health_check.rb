class CreateHealthCheck
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def perform
    check = Net::Ping::External.new(location.ip_address)

    location.health_checks.create!(success: check.ping?)
    pp "Health Check for #{location.ip_address} successfully created"
  rescue StandardError => e
    pp "CreateHealthCheck ERROR ==== #{e.message}"
  end
end
