defmodule HelloDos do
  import IEx
  def make_request(fake_event) do
    IO.inspect(fake_event)
    IO.inspect("inside make request")
    # response =
    #   HTTPoison.post("http://localhost:4000/notifications", %{ body: fake_event }, [
    #     {"Content-Type", "application/json"}
    #   ])

  end

  def get_quotes do
    File.read('./quotes.json')
      |> handle_json
  end

  def generate_fake_events do
    quotes = get_quotes()

    process(quotes)
  end

  def process(quotes) do
    quotes_length = length(quotes)

    receive do
      after
        3_000 ->
          make_request(Enum.at(quotes, Enum.random(0..quotes_length)))
          process(quotes)
    end
  end

  def handle_json({:ok, json}), do: Jason.decode!(json)
  def handle_json({:error, error}), do: IO.inspect(error)
end
