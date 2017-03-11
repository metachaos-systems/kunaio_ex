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

  @doc """
  Example: `ticker("btc", "uah")` or `ticker("gol", "btc")`
  """
  def ticker(left, right) do
      get("tickers/#{left}#{right}")
  end

  def process_url(url) do
    "https://kuna.io/api/v2/" <> url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end
end
