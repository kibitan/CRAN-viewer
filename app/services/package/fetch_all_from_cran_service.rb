class Package::FetchAllFromCRANService
  # FIXME: this class should be as model not as service
  include BaseService

  require "dcf"
  CRAN_PACKAGES_URL = URI('https://cran.r-project.org/src/contrib/PACKAGES').freeze

  def self.call
    # TODO: error handling for failing of request of CRAN_PACKAGES_URL
    Dcf.parse Net::HTTP.get(CRAN_PACKAGES_URL)
  end
end
