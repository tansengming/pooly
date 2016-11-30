defmodule Pooly.ServerTest do
  use ExUnit.Case
  import Pooly.Server, only: [init: 2]

  test 'init/2 with empty list' do
    {:ok, state} = init([], %Pooly.Server.State{})

    assert state == %Pooly.Server.State{}
  end
end