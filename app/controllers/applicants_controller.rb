class ApplicantsController < ApplicationController
  http_basic_authenticate_with :name => ENV["admin_name"], :password => ENV["admin_password"], :only => [:index, :show]

  def index
    @applicants = Applicant.all
    @total = Applicant.count
  end

  def show
    @applicant = Applicant.find(params[:id])
  end

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(applicant_params)

    if @applicant.save
      ApplicantMailer.confirm_email(@applicant).deliver_now
      flash[:success] = "Thank you, we have received your application. You should receive a confirmation email shortly."
      redirect_to root_path
    else
      flash[:error] = "Your application was not submitted. Please make sure all fields are completed correctly."
      redirect_to root_path
    end
  end

  private

  def applicant_params
    params.require(:applicant).permit(:firstname, :lastname, :email, :nationality, :location, :orgtype, :company, :website, :aboutcompany, :position, :businessexperience, :sectorexperience, :language, :english, :spanish, :otherlang, :bmodel, :interest, :profile, :additional)
  end

end
