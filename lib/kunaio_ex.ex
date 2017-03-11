defmodule KunaioEx do
  use HTTPoison.Base
  @moduledoc """
  Documentation for KunaioEx.
  """

  @doc """
  Hello world.

  ## Examples

      iex> KunaioEx.hello
      :world

  """

  @doc """
  Example: `ticker("btc", "uah")` or `ticker("gol", "btc")`
  """
  def ticker(left, right) do
      get_and_process("tickers/#{left}#{right}")
  end

  def get_and_process(url) do
    with {:ok, %HTTPoison.Response{body: body}} <- get(url) do
      {:ok, body}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  def process_url(url) do
    "https://kuna.io/api/v2/" <> url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end
end
