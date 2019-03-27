require 'spec_helper'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-trees-ruby/lib/tree_methods.rb'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-trees-ruby/lib/tree_node_class.rb'

describe "#make_tree" do 
  describe "creates a tree from an array" do
    array = [3,9,20, nil, nil,15,7]
    root = make_tree(array)
    
    it "returns the first node in the list" do 
      expect(root.val).to eq(3)
    end

    it "first node points to the correct left & right nodes" do 
      expect(root.left.val).to eq(9)
      expect(root.right.val).to eq(20)
    end
  end
end

describe "#max_depth" do 
  describe "find the max depth of the tree" do
    array = [3,9,20, nil, nil,15,7]
    root = make_tree(array)

    it "returns an integer representing the maximum depth of the tree" do 
      expect(max_depth(root)).to eq(3)
    end
  end
end
