defmodule SampleWorkerTest do
  use ExUnit.Case
  import SampleWorker, only: [start_link: 1]

  test 'start_link' do
    {:ok, pid} = start_link([])

    assert pid != nil
  end

  test 'stop' do
    {:ok, pid} = start_link([])

    SampleWorker.stop(pid)
    assert Process.alive?(pid) == false
  end
end