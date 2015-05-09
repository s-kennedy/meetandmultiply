class OriginatorsController < ApplicationController

  def index
  end

  def show
    @originator = Originator.find params[:id]
  end

  def new
    @originator = Originator.new
  end

  def create
    @originator = Originator.new(originator_params)

    if @originator.save
      redirect_to originator_path(@originator)
    else
      render 'new'
    end
  end

  def edit
    @originator = Originator.find params[:id]
    render 'new'
  end

  def update
    @originator = Originator.find params[:id]
    @originator.update_attributes originator_params

      if @originator.save
        redirect_to originator_path(@originator)
      else
        render 'edit'
      end
  end

  def delete
    @originator = Originator.find params[:id]
    @originator.destroy!
    redirect_to root_path
  end

  private

  def originator_params
    params.require(:originator).permit(:title, :subtitle, :website, :about1, :about2, :location, :sector, :adopterprofile, :founded, :employees, :turnover, :profit, :bmodel, :partners, :relationships, :coststructure, :revenue, :customerbase, :feature, :impacttitle1, :impacttext1, :impacttitle2, :impacttext2, :impacttitle3, :impacttext3, :growthopportunity, :replicationtitle1, :replicationtitle2, :replicationtitle3, :replicationtext1, :replicationtext2, :replicationtext3)
  end

end
