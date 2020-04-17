defmodule HelloDos do
  def hello do
    response =
      HTTPoison.post("http://localhost:3000", "{\"body\": \"test\"}", [
        {"Content-Type", "application/json"}
      ])

    IO.inspect(response)
  end
end
