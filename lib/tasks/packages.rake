namespace :packages do
  desc "Fetch all Packages from CRAN and store"
  task import_from_CRAN: :environment do
    puts 'feching from CRAN...'
    cran_packages = Package::FetchAllFromCRANService.call

    puts 'storing to database...'
    ActiveRecord::Base.transaction do
      cran_packages.each do |cran_package|
        # NOTE: better to output progress
        # TODO: need refactoring for extract logic of mapping
        Package::CreateService.call(
           name:     cran_package.fetch('Package'),
           version:  cran_package.fetch('Version'),
           raw_data: cran_package
         )
      end
    end

    # TODO: implement import from package description
  end
end
