defmodule GCodeTest do
  use ExUnit.Case
  doctest GCode

  test "greets the world" do
    assert GCode.hello() == :world
  end
end
