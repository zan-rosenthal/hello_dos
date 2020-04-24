defmodule Mix.Tasks.SpamRequests do
  use Mix.Task

  @shortdoc "Calls HelloDos.make_request/0 every three seconds"
  def run(_) do
    :timer.apply_interval(
      3000,
      HelloDos,
      :generate_fake_events,
      []
    )
  end
end
