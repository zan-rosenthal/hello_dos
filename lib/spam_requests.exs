defmodule SpamRequests do
  use Mix.Task
  use IEx
  @shortdoc "Simply calls the Hello.say/0 function."
  def run(_) do
    IEx.pry()

    :timer.apply_interval(
      3000,
      HelloDos,
      :hello
    )
  end
end
