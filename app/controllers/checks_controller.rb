class ChecksController < ApplicationController
    skip_before_action :protect_pages
    def new
        @check= Check.new
    end

    def create
        @check = Check.new(check_params)

        if @check.save
            redirect_to "/profiles/index" 
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    
    def check_params
        params.require(:check).permit(:perro, :descripcion, :dia, :año, :mes)
    end
end