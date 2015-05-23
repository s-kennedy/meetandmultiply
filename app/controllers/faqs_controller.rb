class FaqsController < ApplicationController
  http_basic_authenticate_with :name => ENV["admin_name"], :password => ENV["admin_password"], :only => [:new, :edit]

  def index
    @faqs = Faq.all
  end

  def new
    @faq = Faq.new
  end

  def create
    @faq = Faq.new(faq_params)

    if @faq.save
      redirect_to faqs_path
    else
      redirect_to root_path
    end
  end

  def edit
    @faq = Faq.find params[:id]
    render 'new'
  end

  def update
    @faq = Faq.find params[:id]
    @faq.update_attributes faq_params

      if @faq.save
        redirect_to faqs_path
      else
        render 'edit'
      end
  end

  def delete
    @faq = faq.find params[:id]
    @faq.destroy!
    redirect_to faqs_path
  end


  private

  def faq_params
    params.require(:faq).permit(:question, :answer)
  end
end
