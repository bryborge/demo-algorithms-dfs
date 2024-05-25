# frozen_string_literal: true

require 'set'

# Performs a recursive Depth-First Search (DFS) on a graph starting from a given node.
# This method uses recursion to manage the traversal order and a set to track visited nodes.
# It prints each node as it is visited.
#
# @param graph [Hash] The adjacency list representing the graph, where keys are nodes
#                     and values are arrays of adjacent nodes.
# @param start [String] The starting node for the DFS traversal.
# @param visited [Set] A set to keep track of visited nodes. It is initialized as an empty set
#                      by default, but is passed along during recursive calls.
def dfs_recursive(graph, start, visited = Set.new)
  # Mark the current node as visited and print it to the screen.
  visited.add(start)
  puts start

  # Iterate over each neighbor of the current node.
  graph[start].each do |neighbor|
    # If the neighbor has not been visited, recursively call dfs_recursive on it.
    # This ensures that we visit all reachable nodes from the current node.
    dfs_recursive(graph, neighbor, visited)
  end
end
