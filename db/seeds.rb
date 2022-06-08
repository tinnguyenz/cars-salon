list_of_cars = []

cars_names = ["Volvo", "Vinfast", "Toyota", "Ford", "Porsche", "Mercedes", "Volkswagen"]
properties = [
  [4, 4, "electricity", "300km/h", "yellow"],
  [18, 2, "gasoline", "120km/h", "black"],
  [12, 6, "electricity", "100km/h", "green"],
  [4, 2, "gasoline", "90km/h", "naviblue"],
  [4, 2, "electricity", "15km/h", "brown"],
  [10, 5, "gasoline", "400km/h", "orange"],
  [4, 5, "electricity", "380km/h", "teal"],
]

cars_names.each do |car|
  list_of_cars << properties[rand(properties.count)]
  list_of_cars.unshift(car)
end

list_of_cars.each do |name, wheel, seat, fuel, speed, color| 
  property = Property.new(wheel: wheel, seat: seat, fuel: fuel, speed: speed, color: color)
  car = Car.new(name: name, property: property)  
  car.save
end

