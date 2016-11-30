defmodule Pooly.Server do
  defmodule State do
    defstruct sup: nil, size: nil, mfa: nil
  end

  # entry point so state is empty
  def init([{:size, size}|rest], _) do
    state = %State{size: size}

    init(rest, state)
  end

  def init([{:mfa, mfa}|rest], state) do
    init(rest, %{state|mfa: mfa})
  end

  def init([{:sup, sup}|rest], state) do
    init(rest, %{state|sup: sup})
  end

  def init([], state) do
    # TODO: start worker sup

    {:ok, state}
  end
end