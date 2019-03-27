require 'tree_node_class.rb'
require 'pry'

def make_tree(array)
  #should return the root of the newly created tree
  # create a TreeNode of array element
  # store same in a hash at a key of index+1
  # iterate through hash assigning children to nodes
  # if parent is at n, left = 2n & right = 2n+1
  
  # It's this guy!
  nodes = Hash.new(0)
  # in my mind this created an empty hash
  # but it does more!
  # it causes non-existant keys to return 0 instead of nil

  array.each_with_index do |val, i|
    node = TreeNode.new(val)
    nodes[i+1] = node
  end
  puts "#{nodes}"
  binding.pry
  # called nodes[8]
  # => 0
  # the hash at non-existant keys is returning 0
  nodes.each do |n, node|
    if node.val
      puts "#{node.val}"
      # these guys are giving the 15 & 7 left & rights of 0

      if !!nodes[2*n]
        node.left = nodes[2*n]
        puts "left: #{node.left.val}"
      end
      if !!nodes[2*n +1]
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