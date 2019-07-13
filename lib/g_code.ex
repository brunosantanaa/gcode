defmodule GCode do
  @moduledoc """
  Documentation for GCode.
  """

  alias GCode.Constants

  def decode(gcode_stg) do
    {action, values} =
      gcode_stg
      |> String.downcase()
      |> String.split(" ")
      |> Enum.map(fn x ->
        {x |> String.first() |> String.to_atom(),
         x |> String.replace(String.first(x), "") |> convert_type()}
      end)
      |> Keyword.split(Constants.actions())

    {axis, attr} = values |> Keyword.split(Constants.axis())
    
    %{command: action, attributes: attr, position: axis}
  end

  defp convert_type(value) do
    if String.contains?(value, "."), do: String.to_float(value), else: String.to_integer(value)
  end
end
