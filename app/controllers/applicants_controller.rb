class ApplicantsController < ApplicationController

  def index
    @applicants = Applicant.all
  end

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      redirect_to applicant_path(@applicant)
    else
      render 'new'
    end
  end

  private

  def applicant_params
    params.require(:applicant).permit(:firstname, :lastname, :email, :company, :interest)
  end

end
