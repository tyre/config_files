require "BNode"
class BTree
	attr :top
	def add(node)
		if @top == nil
			@top = node
		else
			pushTree(@top, node)
		end
	end
	def pushTree(parent, node)
		if parent.left == nil
			parent.left = node
		elsif parent.right == nil
			parent.right = node
		else
			pushTree(parent.left, node)
		end
	end
	def contains?(value, parent=@top)
		if parent == nil
			return false
		elsif parent.value == value
			return true
		else
			return (contains?(value,parent.left) || contains?(value, parent.right))
		end
	end
end