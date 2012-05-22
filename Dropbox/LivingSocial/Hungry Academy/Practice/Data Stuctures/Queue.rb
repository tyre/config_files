require "DNode"
class Queue
	include Comparable
	def top
		@top
	end	
	def initialize(t=nil)
		@top = t
		@last = @top
		if t == nil
			@size = 0
		else
			@size = 1
		end
	end
	def push(node)
		if @last == nil
			@last = node
			@top = node
		else
			@last.prev = node
			node.next = @last
			@last = node
		end
		@size += 1
	end
	def pop
		unless @top == nil
			@top = @top.prev
			@size -= 1
		end
	end
	def <=>(other)
			@size <=> other.size
	end	
	def to_s
		temp = @top
		while temp
			puts temp.value
			temp = temp.prev
		end
	end
end