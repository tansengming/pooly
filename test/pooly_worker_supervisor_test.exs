defmodule Pooly.WorkerSupervisorTest do
  use ExUnit.Case

  test 'start_link' do
    mfa = {SampleWorker, :start_link, []}

    {:ok, pid} = Pooly.WorkerSupervisor.start_link(mfa)

    assert pid != nil
  end
end