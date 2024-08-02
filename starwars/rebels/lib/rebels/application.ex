defmodule Rebels.Application do
  @moduledoc false
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {
        SpawnSdk.System.Supervisor,
        system: "rebels-system",
        actors: [
          Rebels.Actors.Xwing
        ]
      }
    ]

    opts = [strategy: :one_for_one, name: Rebels.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
