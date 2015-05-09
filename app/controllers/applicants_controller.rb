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
      ApplicantMailer.confirm_email(@applicant).deliver
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def applicant_params
    params.require(:applicant).permit(:firstname, :lastname, :email, :company, :interest, :activities)
  end

end
