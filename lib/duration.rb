# frozen_string_literal: true

# Measures and returns the execution time of the given block.
# This is useful for profiling the performance of a method.
#
# @yield The block of code to measure the execution time for.
# @return [Float] The duration in seconds that the block took to execute.
def time_duration
  start_time = Time.now()
  yield
  end_time = Time.now()

  end_time - start_time
end
