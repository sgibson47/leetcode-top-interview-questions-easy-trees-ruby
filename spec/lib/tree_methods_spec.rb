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
      expect(root.left.right).to eq(nil)
      expect(root.left.left).to eq(nil)
      expect(root.right.right.val).to eq(7)
      expect(root.right.left.val).to eq(15)
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

describe "#is_valid_bst" do 
  describe "Example 1" do
    array = [2,1,3]
    root = make_tree(array)

    it "returns true if tree is a valid BST" do 
      expect(is_valid_bst(root)).to eq(true)
    end
  end

  describe "Example 2" do
    array = [5,1,4,nil,nil,3,6]
    root = make_tree(array)

    it "returns true if tree is a valid BST" do 
      expect(is_valid_bst(root)).to eq(false)
    end
  end
end
