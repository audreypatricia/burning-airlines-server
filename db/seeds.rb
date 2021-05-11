Airplane.destroy_all
a1 = Airplane.create :name => 'VG100', :row => 3, :column => 31, :brand => "Virgin Airlines"
a2 = Airplane.create :name => 'QA100', :row => 2, :column => 29, :brand => "Qantas Airlines"

puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :date => "12/05/2021", :flight_to => "QLD", :flight_from => "SYD"
f2 = Flight.create :date => "13/05/2021", :flight_to => "ACT", :flight_from => "VIC"

puts "#{ Flight.count } flights"

User.destroy_all
u1 = User.create :name => 'SmartNelly'
u2 = User.create :name => 'Priyanka-1412'
u3 = User.create :name => 'AudreyPat'

puts "#{ User.count } users"

################# ASSOCIATIONS ################################################

puts "Airplane and Flights"
a1.flights << f1 << f2
a2.flights << f1

puts "Users and Flights"
u1.flights << f1 << f2
f1.users << u2 << u3
