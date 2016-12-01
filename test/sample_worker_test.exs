defmodule SampleWorkerTest do
  use ExUnit.Case
  import SampleWorker, only: [start_link: 1, stop: 1]

  setup do
    {:ok, pid} = start_link([])

    {:ok, pid: pid}
  end

  test 'start_link', state do
    assert state[:pid] != nil
  end

  test 'stop', state do
    stop(state[:pid])

    assert Process.alive?(state[:pid]) == false
  end
end