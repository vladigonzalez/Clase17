BASE  = "-----.....-----"
class Morseable
	def initialize(number)
		@number = number
	end

	def generate_hash(number)
		h = {}
		10.times do |indx|
			h[indx]=BASE.slice(10-indx,5)
		end	
	  h[number]
	end

	def to_morse
		self.generate_hash(@number)
	end
end
m = Morseable.new(3)
print m.to_morse
