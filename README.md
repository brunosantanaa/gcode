# GCode

```elixir
iex> GCode.decode("G00 x15 y21")
%{attributes: [], command: [g: 0], position: [x: 15, y: 21]}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `gcode` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gcode, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/gcode_json](https://hexdocs.pm/gcode_json).

