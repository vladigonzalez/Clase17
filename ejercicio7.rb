=begin
Utilizando el mismo archivo del ejercicio anterior:
La tienda desea generar un nuevo catálogo que no incluya el último precio correspondiente a cada producto debido a que ya no comercializa 
productos de talla XS.
Se pide generar un método que reciba como argumento los datos del archivo catalogo.txt y luego imprima el nuevo catálogo solicitado 
en un archivo llamado nuevo_catalogo.txt
	
=end

class Product
	attr_accessor :name, :size
	def initialize(name, *size)
		@name = name
		@size = size.map(&:to_i)
	end

	def average
		@size.inject(&:+) / @size.size
	end

	def new_catalogo
		new_catalogo = []
		new_catalogo = @size[0..2]
	end
end

file = File.open("catalogo.txt", "r")
data = file.readlines
file.close
products_list = []
data.each do |line|
	ls = line.split(', ')
	products_list << Product.new(*ls)
end

new_product_list = []

file = File.open("newcatalogo.txt", "w")
products_list.each do |line|
	new_product_list = line.new_catalogo
	file.puts "La nueva lista de precios para #{line.name} es #{new_product_list}"
end
file.close