# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Import necessary libraries
require 'rack/test'

# Include Rack::Test::UploadedFile to simulate file uploads
include Rack::Test::Methods

p1= Product.create(nombre: "default", descripcion: "hola", precio:1000,src: Rack::Test::UploadedFile.new(Rails.root.join('app','assets', 'images', 'default.png'), 'image/png'), category:1)


p2= Product.create(nombre: "kit1", descripcion: "kit principal", precio:15000,src: Rack::Test::UploadedFile.new(Rails.root.join('app','assets', 'images', 'kit1.png'), 'image/png'), category:1)


p3= Product.create(nombre: "kit2", descripcion: "hola", precio:10000 ,src: Rack::Test::UploadedFile.new(Rails.root.join('app','assets', 'images', 'kit2.png'), 'image/png'), category:1)