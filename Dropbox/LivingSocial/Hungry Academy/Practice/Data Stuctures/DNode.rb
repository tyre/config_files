class DNode #a doubly linked node
	attr_accessor :next, :prev
	def value
		@value
	end
	def initialize(value, n=nil, p=nil)
		@value = value
		@next = n
		@prev = p
	end
end