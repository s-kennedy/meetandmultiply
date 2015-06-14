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

  def destroy
    @applicant = Applicant.find params[:id]
    @applicant.destroy
    redirect_to applicants_path
  end

  def accept
    @applicant = Applicant.find params[:id]
    ApplicantMailer.acceptance_email(@applicant).deliver_now
    @applicant.status = "Accepted"
    @applicant.save
    flash[:accepted] = "#{@applicant.firstname} has been sent an acceptance email."
    redirect_to applicants_path
  end

  def more_info
    @applicant = Applicant.find params[:id]
    ApplicantMailer.more_info(@applicant).deliver_now
    @applicant.status = "More info requested"
    @applicant.save
    flash[:more_info] = "#{@applicant.firstname} has been sent an email to request more info."
    redirect_to applicants_path
  end

  def reject
    @applicant = Applicant.find params[:id]
    ApplicantMailer.rejection_email(@applicant).deliver_now
    @applicant.status = "Rejected"
    @applicant.save
    flash[:rejected] = "#{@applicant.firstname} has been sent a rejection email."
    redirect_to applicants_path
  end

  private

  def applicant_params
    params.require(:applicant).permit(:firstname, :lastname, :email, :nationality, :location, :orgtype, :company, :website, :aboutcompany, :position, :businessexperience, :sectorexperience, :language, :english, :spanish, :otherlang, :bmodel, :interest, :profile, :additional, :referrer)
  end

end
