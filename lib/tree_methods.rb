require 'tree_node_class.rb'
require 'pry'

def make_tree(array)
  #should return the root of the newly created tree
  # create a TreeNode of array element
  # store same in a hash at a key of index+1
  # iterate through hash assigning children to nodes
  # if parent is at n, left = 2n & right = 2n+1
  nodes = Hash.new(0)
  array.each_with_index do |val, i|
    node = TreeNode.new(val)
    nodes[i+1] = node
  end

  nodes.each do |n, node|
    if node.val
      puts "#{node.val}"
      if nodes[2*n]
        node.left = nodes[2*n]
        puts "left: #{node.left.val}"
      end
      if nodes[2*n +1]
        node.right = nodes[2*n+1]
        puts "right: #{node.right.val}"
      end
    end
  end

  nodes[1]
end

def max_depth(root)
  root ? 1 + [max_depth(root.left), max_depth(root.right)].max : 0
end