class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all
    @total = Applicant.count
  end

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      ApplicantMailer.confirm_email(@applicant).deliver_now
      redirect_to root_path
    else
      redirect_to '/#apply'
    end
  end

  private

  def applicant_params
    params.require(:applicant).permit(:firstname, :lastname, :email, :nationality, :location, :orgtype, :company, :website, :aboutcompany, :position, :businessexperience, :sectorexperience, :language, :bmodel, :interest, :profile, :additional)
  end

end
