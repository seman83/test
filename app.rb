require 'sqlite3'
db = SQLite3::Database.new 'test.sqlite'

db.execute "SELECT * FROM Cars"

db.execute "INSERT INTO Cars (Name, Price) VALUES ('Jaguar', '10000') "

db.execute "SELECT * FROM Cars" do |cars|
	puts cars
	puts "==="
	puts cars.class
	
end

db.close