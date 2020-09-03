Property.create(address: "123 Elm Street", city: "Seattle", state: "WA", max_occupancy: "4" )
Property.create(address: "1 Park Avenue", city: "New York", state: "NY", max_occupancy: "8" )
Property.create(address: "10000 Rodeo Drive", city: "Beverly Hills", state: "CA", max_occupancy: "20" )

100.times do 
    # create User
end
50.times do
    #create Property
end
500.times do 
    property = Property.all.sample
    user = User.all.sample
    #create Booking using property.id and user.id
end