defmodule DewdbTest do
  use ExUnit.Case
  doctest Dewdb

  test "simple lexer" do
    input = ~c"select * from xxx"
    :lexer.string(input)
    |> IO.inspect()
  end
end
