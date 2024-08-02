defmodule RebelsTest do
  use ExUnit.Case
  doctest Rebels

  test "greets the world" do
    assert Rebels.hello() == :world
  end
end
