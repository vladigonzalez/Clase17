=begin
  
Se pide:
- Optimizar el código implementando el operador splat al momento de instanciar los productos
- Generar un método que permita calcular el promedio de precio por producto.
#Codigo Original
class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end
puts products_list
=end

class Product
  attr_accessor :name
  def initialize(name, *args)
    @name = name
    #@size = size.map(&:to_i)
    @large = args[0].to_i
    @medio = args[1].to_i
    @small = args[2].to_i    
    @xsmall = args[3].split("\n")[0].to_i
  end

  def calcula_prom
    prom = (@large+@medio+@small+@small)/4.to_f
  end

  def self.new_catalogo data
    file = File.open("newcatalogo.txt", "w")
    data.each do |prod|
      arr = prod.split(', ')
      print arr.pop
      str = ""
      arr.each_with_index do |element,index|
        if index == 0
          str = str+"#{element}"
        else
          str = str+", #{element}"   
        end
      end
      str = str+"\n"
      file.puts str
      puts str
    end
    file.close
  end
end

data = []
File.open("catalogo.txt", "r") { |file| data = file.readlines }    
Product.new_catalogo data
