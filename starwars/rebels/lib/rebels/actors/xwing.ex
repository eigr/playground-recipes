defmodule Rebels.Actors.Xwing do
  use SpawnSdk.Actor,
    name: "XWing",
    kind: :unnamed,
    stateful: true,
    state_type: Io.Eigr.Spawn.Starwars.Rebels.XWingState
end
