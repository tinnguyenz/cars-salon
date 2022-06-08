list_of_cars = [
  ['Tesla Model S', '51885.17', 'https://static-assets.tesla.com/configurator/compositor?&options=$MT337,$PPSW,$W40B,$IBB1&view=STUD_FRONT34&model=m3&size=1920&bkba_opt=2&version=v0028d202109300916&crop=0,0,0,0&version=v0028d202109300916']
]
list_of_suv = [
  ['Tesla Model S', '51885.17', 'https://static-assets.tesla.com/configurator/compositor?&options=$MT337,$PPSW,$W40B,$IBB1&view=STUD_FRONT34&model=m3&size=1920&bkba_opt=2&version=v0028d202109300916&crop=0,0,0,0&version=v0028d202109300916']
]

list_of_cars.each do |name, price, picture| 
  v = Car.new(name: name, price: price, picture: picture)
  v.save
end

