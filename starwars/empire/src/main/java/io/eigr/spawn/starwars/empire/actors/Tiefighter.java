package io.eigr.spawn.starwars.empire.actors;

import io.eigr.spawn.api.actors.StatefulActor;
import io.eigr.spawn.api.actors.behaviors.ActorBehavior;
import io.eigr.spawn.api.actors.behaviors.BehaviorCtx;
import io.eigr.spawn.api.actors.behaviors.UnNamedActorBehavior;
import io.eigr.spawn.starwars.empire.Empire;

public class Tiefighter implements StatefulActor<Empire.TiefighterState> {

    @Override
    public ActorBehavior configure(BehaviorCtx behaviorCtx) {
        return new UnNamedActorBehavior();
    }
}
