defmodule HelloDos do
  def generate_fake_event do
    response =
      HTTPoison.post("http://localhost:4000/notifications", "{\"body\": \"test\"}", [
        {"Content-Type", "application/json"}
      ])

    IO.inspect(response)
  end
end
