defmodule GCode.Constants do
  @actions [:g, :m]
  @axis [:x, :y, :z, :u, :v, :w, :e]
  @g [0, 54, 17, 90, 91.1, 94, 21, 40, 49]
  @m [0, 5, 9]

  def actions(), do: @actions
  def axis(), do: @axis
  def g(), do: @g
  def m(), do: @m
end
