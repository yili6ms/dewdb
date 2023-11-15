defmodule DewdbTest do
  use ExUnit.Case
  doctest Dewdb

  test "greets the world" do
    assert Dewdb.hello() == :world
  end
end
