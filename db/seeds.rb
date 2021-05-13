Airplane.destroy_all
a1 = Airplane.create :name => 'BA100', :row => 31, :column => 8
a2 = Airplane.create :name => 'BA282', :row => 29, :column => 4
a3 = Airplane.create :name => 'BA780', :row => 45, :column => 8
a4 = Airplane.create :name => 'BA622', :row => 25, :column => 4

puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :date => "15/05/2021", :flight_to => "OOL", :flight_from => "SYD"
f2 = Flight.create :date => "16/05/2021", :flight_to => "OOL", :flight_from => "SYD"
f3 = Flight.create :date => "16/05/2021", :flight_to => "SYD", :flight_from => "MEL"
f4 = Flight.create :date => "18/05/2021", :flight_to => "ADL", :flight_from => "SYD"
f5 = Flight.create :date => "23/05/2021", :flight_to => "SYD", :flight_from => "ADL"
f6 = Flight.create :date => "28/05/2021", :flight_to => "HBA", :flight_from => "SYD"

puts "#{ Flight.count } flights"

User.destroy_all
u1 = User.create :name => 'SmartNelly', :username =>'SmartNelly', :password => 'chicken'
u2 = User.create :name => 'Priyanka-1412', :username =>'Priyanka-1412', :password => 'chicken'
u3 = User.create :name => 'AudreyPat', :username => 'AudreyPat', :password => 'chicken'

puts "#{ User.count } users"

################# ASSOCIATIONS ################################################

puts "Airplane and Flights"
a1.flights << f1 << f2
a2.flights << f3
a3.flights << f4 << f5
a4.flights << f6

puts "Users and Flights"
u1.flights << f4 << f5
f1.users << u2 << u3
