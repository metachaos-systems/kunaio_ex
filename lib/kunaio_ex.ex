defmodule KunaioEx do
  @moduledoc """
  Documentation for KunaioEx.
  """

  @doc """
  Hello world.

  ## Examples

      iex> KunaioEx.hello
      :world

  """
  use HTTPoison.Base

  def process_url(url) do
    "https://kuna.io/api/v2/" <> url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end
end
