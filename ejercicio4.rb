#Para debugger se utiliza require "pry"
#require "pry"

class Dog
	#attr_reader :name
	def initialize(hs)
		@name = hs[:nombre]
		@raza = hs[:raza]
		@color = hs[:color]
	end	
	def ladrar
#binding.pry # detiene el codigo y muestra consola para consultar el valor de las variables
		puts "#{@name} de raza #{@raza} color #{@color} esta ladrando!!"
	end
end
#binding.pry

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro = Dog.new(propiedades)
perro.ladrar