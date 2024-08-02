package io.eigr.spawn.starwars.empire;

import io.eigr.spawn.api.Spawn;
import io.eigr.spawn.api.exceptions.SpawnException;
import io.eigr.spawn.starwars.empire.actors.Tiefighter;

public class App {
    public static void main(String[] args) throws SpawnException {
        new Spawn.SpawnSystem()
                .create("empire")
                .withActor(Tiefighter.class)
                .build()
                .start();
    }
}
