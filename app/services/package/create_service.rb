class Package::CreateService
  include BaseService

  attr_reader *%i(
    name
    version
    raw_data
  )

  def initialize(name:, version:, raw_data:)
    @name     = name
    @version  = version
    @raw_data = raw_data
  end

  def call
    # TODO: error handling for when name/version is already exists
    Package.new(
      name: name,
      version: version,
      raw_data: raw_data
    ).save
  end
end
