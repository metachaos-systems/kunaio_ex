defmodule KunaioTest do
  use ExUnit.Case
  doctest Kunaio

  test "generic get request" do
    {:ok, %HTTPoison.Response{body: body}} = Kunaio.get("order_book?market=golbtc")
    assert %{"asks" => _} = body
  end

  test "golbtc ticker request" do
    {:ok, body}  = Kunaio.ticker("gol","btc")
    assert %{"at" => _, "ticker" => _} = body
  end

  test "golbtc order book request" do
    {:ok, body}  = Kunaio.order_book("gol","btc")
    assert %{"asks" => [ %{"created_at" => _ } | _ ]} = body
  end

  test "golbtc trade history request" do
    {:ok, body}  = Kunaio.trade_history("gol","btc")
    assert  [ %{"created_at" => _, "funds" => _} | _ ]  = body
  end
end
