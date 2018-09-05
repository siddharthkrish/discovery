class ServicesController < ApplicationController
    # GET /services
    def index
        @services = Service.all
        json_response(@services)
    end

    # POST /services
    def create
    end

    # GET /services/:id
    def show
        puts "requested id: #{params[:id]}"
    end

    # PUT /services/:id
    def update
        head :no_content
    end

    # DELETE /services/:id
    def destroy
        head :no_content
    end
end
