
require 'active_support/concern'

module ThecoreDownloadPdfCommonAbilitiesConcern
    extend ActiveSupport::Concern
    included do
    def thecore_download_pdf_commons_abilities user
        if user
        # if the user is logged in, it can do certain tasks regardless his role
        if user.admin?
            # if the user is an admin, it can do a lot of things, usually
        end

        if user.has_role? :role
            # a specific role, brings specific powers
        end
        end
    end
    end
end

# include the extension
TheCoreAbilities.send(:include, ThecoreDownloadPdfCommonAbilitiesConcern)
