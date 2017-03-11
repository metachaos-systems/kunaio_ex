defmodule Kunaio do
  use HTTPoison.Base
  @moduledoc """
  Documentation for Kunaio.
  """

  @doc """
  Example: `ticker("btc", "uah")` or `ticker("gol", "btc")`
  """
  def ticker(left, right) do
      get_and_process("tickers/#{left}#{right}")
  end


  @doc """
  Example: `order_book("gol", "btc")`
  """
  def order_book(left, right) do
      get_and_process("order_book?market=#{left}#{right}")
  end

  @doc """
  Example: `trade_history("gol", "btc")`
  """
  def trade_history(left, right) do
      get_and_process("trades?market=#{left}#{right}")
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
