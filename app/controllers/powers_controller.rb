class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response 

    # GET /powers
    def index
        powers = Power.all
      render json: powers
    end
  

  
    # GET /powers/:id
    def show
        powers = find_power
        render json: powers
     
          
    end
  
    # PATCH /powers/:id
    def update
        powers = find_power
        powers.update(power_params)
        render json: powers
     
        
    end
  

  

  
    private
  
    def power_params
      params.permit(:description)
    end
  
    def render_not_found_response
  
      render json: { error: "Powers not found" }, status: :not_found
  
    end
  
    def find_power
        Power.find(params[:id])
    end
  
  end
  