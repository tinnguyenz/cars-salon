class ApplicationController < ActionController::API
    def cars
        @cars = Car.all
    
        render json: @cars
    end
end
