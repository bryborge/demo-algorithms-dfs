# frozen_string_literal: true

require_relative './var/globals.rb'
require_relative './lib/dfs/iterative.rb'
require_relative './lib/dfs/recursive.rb'
require_relative './lib/duration.rb'

# INPUTS
graph = GRAPH_1 # GRAPH_{1 2 3}
start = 'A'

# ITERATIVE
iterative_exec_time = time_duration { dfs_iterative(graph, start) }
puts "DFS Iterative Execution Time: #{iterative_exec_time} seconds"

# RECURSIVE
recursive_exec_time = time_duration { dfs_recursive(graph, start) }
puts "DFS Recursive Execution Time: #{recursive_exec_time} seconds"
