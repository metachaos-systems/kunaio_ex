# Kunaio_ex

Kunio_ex is an Elixir client for kuna.io cryptocurrency market. Work in progress.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kunaio_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:kunaio_ex, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/kunaio_ex](https://hexdocs.pm/kunaio_ex).

# Examples

```
{:ok, order_book} = Kunaio.order_book("gol", "btc")
{:ok, trade_history} = Kunaio.trade_history("gol", "btc")
{:ok, ticker} = Kunaio.ticker("gol", "btc")
```
