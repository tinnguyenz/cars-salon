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

cars_names.each do |name|
  new_car = properties[rand(properties.count)]
  new_car.unshift(name)

  list_of_cars << new_car
end

list_of_cars.each do |car| 
  property = Property.new(wheel: car[1], seat: car[2], fuel: car[3], speed: car[4], color: car[5])
  Car.new(name: car[0], property: property).save
end

