class ApplicationController < ActionController::API
    def cars
        @result = []
        Car.all.each do |i| 
            car = []
            car << i.name
            car << i.property.wheel
            car << i.property.seat
            car << i.property.fuel
            car << i.property.speed
            car << i.property.color
            @result << car
        end
        render json: @result
    end
end
