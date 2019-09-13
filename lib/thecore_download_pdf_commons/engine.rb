module ThecoreDownloadPdfCommons
  class Engine < ::Rails::Engine

    config.assets.precompile += %w( thecore_download_pdf_commons/index.js thecore_download_pdf_commons/index.css )
    initializer 'thecore_download_pdf_commons.add_to_migrations' do |app|
      unless app.root.to_s.match root.to_s
        # APPEND TO MAIN APP MIGRATIONS FROM THIS GEM
        config.paths['db/migrate'].expanded.each do |expanded_path|
          app.config.paths['db/migrate'] << expanded_path
        end
      end
    end

  end
end
