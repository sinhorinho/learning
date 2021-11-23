defmodule Albuns.Track do
  @type t :: %{name: String.t(), duration: pos_integer()}

  defstruct [:name, :duration]

  @spec new(%{name: String.t(), duration: pos_integer()}) :: {:ok, Track.t()} | {:error, :invalid_params}
  def new(%{name: name, duration: duration}) when duration > 0 do
    track = %__MODULE__{
      name: name|| nil,
      duration: duration || nil
    }

    {:ok, track}
  end

  def new(_) do
    {:error, :invalid_params}
  end
end
