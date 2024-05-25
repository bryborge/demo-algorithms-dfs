# frozen_string_literal: true

require 'set'

# Performs an iterative Depth-First Search (DFS) on a graph starting from a given node.
# This method uses a stack to manage the traversal order and a set to track visited nodes.
# It prints each node as it is visited.
#
# @param graph [Hash] The adjacency list representing the graph, where keys are nodes
#                     and values are arrays of adjacent nodes.
# @param start [String] The starting node for the DFS traversal.
def dfs_iterative(graph, start)
  # 1.  Initialize:
  #       * Stack   - (And starting node) to keep track of nodes to visit.
  #       * Visited - A set to keep track of visited nodes.
  stack   = [start]
  visited = Set.new

  # 2.  Traverse so long as there are more nodes in the stack.
  while stack.any?  
    # Pop a node from the stack. This node is currently being visited.       
    node = stack.pop

    # Skip this node if it has already been visited (ensuring each node is only processed once).
    next if visited.include?(node)

    # Mark the node as visited and print it to the screen.
    visited.add(node)
    puts node

    # Add all unvisited neighbors of the current node to the stack.
    # We reverse the order to maintain the correct traversal order since
    # the stack is LIFO (Last In, First Out).
    graph[node].reverse.each do |neighbor|
      stack.push(neighbor)
    end
  end
end
