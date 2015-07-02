class SubscribersController < ApplicationController
  http_basic_authenticate_with :name => ENV["admin_name"], :password => ENV["admin_password"], :only => [:index, :show]

  def index
    @subscribers = Subscriber.all
  end

  def create
    @subscriber = Subscriber.new subs_params 
    if @subscriber.save
      flash[:subscribed] = "Thank you #{@subscriber.firstname.downcase.capitalize}, you have been successfully subscribed to the Meet & Multiply mailing list."
      redirect_to root_path
    else 
      flash[:fail] = "Sorry, your form was not submitted. Please make sure all the fields are completed correctly and try again."
      redirect_to root_path
    end
   end

  def destroy
    @subscriber = Subscriber.find params[:id]
    @subscriber.destroy
    flash[:deleted] = "#{@subscriber.firstname} #{@subscriber.lastname} has been deleted."
    redirect_to subscribers_path
  end

  private

  def subs_params
    params.require(:subscriber).permit(:firstname, :lastname, :email, :sector, :orgname, :region, :role)
  end

end
