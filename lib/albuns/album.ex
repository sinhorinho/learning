defmodule Albuns.Album do
  @type t :: %{name: String.t(), tracks: list(Albuns.Track.t())}
  @type possible_errors :: :exceeded_minutes | :exceeded_number_of_tracks

  defstruct [:name, :tracks]

  @spec new(%{name: String.t(), tracks: list(Albuns.Track.t())}) :: {:ok, Album.t()} | {:error, possible_errors()}
  def new(_), do: nil

end
