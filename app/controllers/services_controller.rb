class ServicesController < ActionController::API
    # hasmap that will act as an inmemory store
    
    # GET /services
    def index
    end

    # POST /services
    def create
    end

    # GET /services/:id
    def show
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
