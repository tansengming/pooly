defmodule PoolyTest do
  use ExUnit.Case

  setup do
    pool_config = [
      mfa: {SampleWorker, :start_link, []},
      size: 5
    ]

    {:ok, pool_config: pool_config}
  end

  test '#start_pool', state do
    {:ok, pid} = Pooly.start_pool(state[:pool_config])

    assert pid != nil
  end
end
