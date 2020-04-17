defmodule HelloDos do
  def hello do
    :timer.apply_interval(
      3000,
      HelloDos,
      :make_request,
      []
    )
  end

  def make_request do
    response =
      HTTPoison.post("http://localhost:4000/notifications", "{\"body\": \"test\"}", [
        {"Content-Type", "application/json"}
      ])

    IO.inspect(response)
  end
end
