class BNode
	attr_accessor :left, :right
	def value
		@value
	end
	def initialize(value, left=nil, right=nil)
		@value = value
		@left = left
		@right = right
	end
end