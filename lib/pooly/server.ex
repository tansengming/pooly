defmodule Pooly.Server do
  defmodule State do
    defstruct sup: nil
  end

  def init([], state) do
    # TODO: start worker sup

    {:ok, state}
  end
end