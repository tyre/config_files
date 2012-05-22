class SNode #a singley link node
	attr_accessor :next
	def value
		@value
	end
	def initialize(value, n=nil)
		@value = value
		@next=n
	end
end