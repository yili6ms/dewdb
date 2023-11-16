defmodule DewdbTest do
  use ExUnit.Case
  doctest Dewdb

  test "simple lexer" do
    input = ~c"select * from xxx"

    :lexer.string(input)
    |> IO.insspect()
  end

  test "select field" do
    input = ~c"select a,b from xxx"

    :lexer.string(input)
    |> IO.insspect()
  end

  test "simple parser" do
    input = ~c"select * from xxx"
    {_, res, _} = :lexer.string(input)

    res
    |> :parser.parse()
    |> IO.inspect()
  end
end
