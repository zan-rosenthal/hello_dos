defmodule Mix.Tasks.SpamRequests do
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function."
  def run(_) do
    :timer.apply_interval(
      3000,
      HelloDos,
      :hello
    )
  end
end
