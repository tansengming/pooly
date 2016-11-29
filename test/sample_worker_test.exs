defmodule SampleWorkerTest do
  use ExUnit.Case

  test 'start_link' do
    {:ok, pid} = SampleWorker.start_link([])

    assert pid != nil
  end

  test 'stop' do
    {:ok, pid} = SampleWorker.start_link([])

    SampleWorker.stop(pid)
    assert Process.alive?(pid) == false
  end
end