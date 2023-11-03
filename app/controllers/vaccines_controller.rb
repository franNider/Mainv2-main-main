class VaccinesController < ApplicationController
    skip_before_action :protect_pages
    def new
        @vaccine= Vaccine.new
    end

    def create
        @vaccine = Vaccine.new(vaccine_params)

        if @vaccine.save
            redirect_to "/profiles/index" 
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    
    def vaccine_params
        params.require(:vaccine).permit(:vacuna, :perro ,:dia, :año, :mes)
    end
end