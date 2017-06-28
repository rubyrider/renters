module Dashboard
  module Property
    class ClientsController < ApplicationController
      before_action :authenticate_user!

      before_action :set_dashboard_property_client, only: [:show, :edit, :update, :destroy]

      # GET /dashboard/property/clients
      # GET /dashboard/property/clients.json
      def index
        @property_clients = current_user.clients
      end

      # GET /dashboard/property/clients/1
      # GET /dashboard/property/clients/1.json
      def show
      end

      # GET /dashboard/property/clients/new
      def new
        @client = current_user.clients.new
      end

      # GET /dashboard/property/clients/1/edit
      def edit
      end

      # POST /dashboard/property/clients
      # POST /dashboard/property/clients.json
      def create
        @client = current_user.clients.new(dashboard_property_client_params)

        respond_to do |format|
          if @client.save
            format.html { redirect_to [:dashboard, @client], notice: 'Client was successfully created.' }
            format.json { render :show, status: :created, location: @client }
          else
            format.html { render :new }
            format.json { render json: @client.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /dashboard/property/clients/1
      # PATCH/PUT /dashboard/property/clients/1.json
      def update
        respond_to do |format|
          if @client.update(dashboard_property_client_params)
            format.html { redirect_to [:dashboard, @client], notice: 'Client was successfully updated.' }
            format.json { render :show, status: :ok, location: @client }
          else
            format.html { render :edit }
            format.json { render json: @client.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /dashboard/property/clients/1
      # DELETE /dashboard/property/clients/1.json
      def destroy
        @client.destroy
        respond_to do |format|
          format.html { redirect_to url_for(controller: 'dashboard/property/clients', action: 'index'), notice: 'Client was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_dashboard_property_client
        @client = current_user.clients.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def dashboard_property_client_params
        params.fetch(:property_client, {}).permit(:first_name, :last_name, :user_id, :phone, :suite, :address1, :address2, :district, :post_office, :zip, :area,)
      end
    end
  end
end
