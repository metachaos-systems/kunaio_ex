defmodule KunaioExTest do
  use ExUnit.Case
  doctest KunaioEx

  test "generic get request" do
    {:ok, %HTTPoison.Response{body: body}} = KunaioEx.get("order_book?market=golbtc")
    assert %{"asks" => _} = body
  end

  test "golbtc ticker request" do
    {:ok, body}  = KunaioEx.ticker("gol","btc")
    assert %{"at" => _, "ticker" => _} = body
  end
end
