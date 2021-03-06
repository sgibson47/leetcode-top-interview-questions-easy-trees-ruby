require 'tree_node_class.rb'
require 'pry'

def make_tree(array) 
  nodes = Hash.new

  array.each_with_index do |val, i|
    node = TreeNode.new(val) if val
    nodes[i+1] = node
  end

  nodes.each do |n, node|
    if node
      if !!nodes[2*n]
        node.left = nodes[2*n]
      end
      if !!nodes[2*n +1]
        node.right = nodes[2*n+1]
      end
    end
  end

  nodes[1]
end

def max_depth(root)
  root ? 1 + [max_depth(root.left), max_depth(root.right)].max : 0
end

def is_valid_bst(root, min = -Float::INFINITY, max = Float::INFINITY)
    return true unless root
    if root.val <= min || root.val >= max
      return false
    else
      is_valid_bst(root.left, min, root.val) && is_valid_bst(root.right, root.val, max)
    end
end