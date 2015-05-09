class SiteController < ApplicationController

  def index
    @applicant = Applicant.new
  end

end
