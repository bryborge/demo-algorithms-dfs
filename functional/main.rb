# frozen_string_literal: true

require_relative './var/globals.rb'
require_relative './lib/iterative.rb'
require_relative './lib/recursive.rb'

# INPUTS
graph = GRAPH_1 # GRAPH_{1 2 3}
start = 'A'

# ITERATIVE
puts "DFS Traversal starting from node #{start} (iterative):"
dfs_iterative(graph, start)

# RECURSIVE
puts "DFS Traversal starting from node #{start} (recursive):"
dfs_recursive(graph, start)
