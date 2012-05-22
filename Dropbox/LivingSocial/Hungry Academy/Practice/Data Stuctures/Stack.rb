require "SNode"
class Stack
	include Comparable # allows overriding of <=>
	def top
		@top
	end
	def size
			@size
	end
	def initialize(t=nil)
		@top = t
		if t == nil
			@size = 0
		else
			@size = 1
		end
	end
	
	def push(node)
		if node != nil
			node.next = @top
			@top = node
		end
		@size += 1
	end

	def pop()
		if @top != nil
			@top = top.next
			@size-=1
		end
	end
	
	def <=>(other)
		@size <=> other.size
	end	
	
	def to_s
		if @top != nil
			temp = @top
			while temp != nil
				puts temp.value
				temp = temp.next
			end
		else
			puts "The stack is empty"
		end
	end
end