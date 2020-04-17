defmodule HelloDosTest do
  use ExUnit.Case
  doctest HelloDos

  test "greets the world" do
    assert HelloDos.hello() == :world
  end
end
