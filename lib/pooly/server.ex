defmodule Pooly.Server do
  defmodule State do
    defstruct sup: nil, size: nil, mfa: nil
  end

  def init([{:size, size}|rest], _state) do
    state = %State{size: size}

    init(rest, state)
  end

  def init([], state) do
    # TODO: start worker sup

    {:ok, state}
  end
end