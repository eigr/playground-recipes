defmodule Dice.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start SpawnSDK system
      {
        SpawnSdk.System.Supervisor,
        system: "tictactoe-system",
        actors: [
          Dice.Matchmaking.Actor
        ],
        extenal_subscribers: []
      },
      DiceWeb.Telemetry,
      Supervisor.child_spec({Phoenix.PubSub, name: Dice.PubSub}, id: :dice_pubsub),
      DiceWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Dice.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    DiceWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
