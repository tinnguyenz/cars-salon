list_of_cars = []

cars_names = ["Volvo", "Vinfast", "Toyota", "Ford", "Porsche", "Mercedes", "Volkswagen"]
properties = [
  [4, 4, "electricity", "300km/h", "yellow"],
  [18, 2, "gasoline", "120km/h", "black"],
  [12, 6, "electricity", "100km/h", "green"],
  [4, 2, "gasoline", "90km/h", "naviblue"],
  [4, 2, "electricity", "15km/h", "brown"],
  [10, 5, "gasoline", "400km/h", "orange"],
  [4, 5, "electricity", "380km/h", "teal"]
]

cars_names.each_with_index do |name, i|
  new_car = properties[i].unshift(name)
  list_of_cars << new_car
end

list_of_cars.each_with_index do |item, index| 
  property = Property.create(wheel: item[1], seat: item[2], fuel: item[3], speed: item[4], color: item[5], car_id: index)
  car = Car.new(id: index, name: item[0], property: property)
  car.save
end