class WelcomeController < ApplicationController
  def home
  end

  def about

  end

  def privacy

  end

  def contact
    @enquiry = CustomerQuery.new
  end

  def create_query
    @enquiry = CustomerQuery.new(customer_query_params)

    if @enquiry.save
      flash[:success] = "We have recorded your enquiry successfully, we will be in touch with you very soon- Your enquiry id is #{@enquiry.id}. Please use this a reference for feedback"

      redirect_to url_for(controller: '/welcome', action: :home)

    else
      flash[:notice] = 'We can not record your enquiry. Please consider the following error messages'

      render :contact
    end
  end

  def customer_query_params
    params.fetch(:customer_query, {}).permit(:full_name, :email, :phone_number, :enquiry)
  end
end
