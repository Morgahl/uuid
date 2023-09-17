defmodule UuidTest do
  use ExUnit.Case
  doctest Uuid

  test "greets the world" do
    assert Uuid.hello() == :world
  end
end
