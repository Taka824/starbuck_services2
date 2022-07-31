class PagesController < ApplicationController
    skip_before_action :require_login
    def rule
    end

    def term
    end
end