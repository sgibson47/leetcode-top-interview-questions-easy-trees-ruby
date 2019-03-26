require 'spec_helper'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-trees-ruby/lib/tree_methods.rb'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-trees-ruby/lib/tree_node_class.rb'

describe "#make_tree" do 
  describe "creates a tree from an array" do
    array = [3,9,20,null,null,15,7]
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
