defmodule Pooly.ServerTest do
  use ExUnit.Case
  import Pooly.Server, only: [init: 2]

  test 'init/2 with empty list' do
    {:ok, state} = init([], %Pooly.Server.State{})

    assert state == %Pooly.Server.State{}
  end

  test 'init/2 with size' do
    {:ok, state} = init([size: 5], %Pooly.Server.State{})

    assert state == %Pooly.Server.State{size: 5}
  end
end