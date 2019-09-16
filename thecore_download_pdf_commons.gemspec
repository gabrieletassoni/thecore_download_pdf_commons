$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "thecore_download_pdf_commons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "thecore_download_pdf_commons"
  spec.version     = ThecoreDownloadPdfCommons::VERSION
  spec.authors     = ["Gabriele Tassoni"]
  spec.email       = ["gabriele.tassoni@gmail.com"]
  spec.homepage = 'https://github.com/gabrieletassoni/thecore_download_pdf_commons' #    = "TODO"
  spec.summary = 'Integration for Thecore with Prawn' #     = "TODO: Summary of ThecoreDownloadPdfCommons."
  spec.description = 'This component sends back to the browser a pdf, in order to let it be downloaded.' # = "TODO: Description of ThecoreDownloadPdfCommons."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # spec.add_dependency "rails", "~> 5.2.3"

  # spec.add_development_dependency "sqlite3"
  spec.add_dependency 'thecore', '~> 1.6'
  spec.add_dependency "prawn", "~> 2.2"
  spec.add_dependency "prawn-table", "~> 0.2"
end
