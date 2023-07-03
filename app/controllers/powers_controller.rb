class PowersController < ApplicationController
    def show
        render json: Power.all
    end
end
