# Star Wars 

"The Empire is on the verge of success. Soon, peace and order will be restored throughout the galaxy. Even now, our capable forces, led by Darth Vader, are striking back at the Rebel insurgents." ―Palpatine

## The Game

Simulates a battle between TIE fighter and X-wing´s.

The source code can be found here:

```
open https://github.com/eigr/playground-recipes/tree/main/starwars
```

## SDKs of the languages ​​used

[Elixir](https://github.com/eigr/spawn/tree/main/spawn_sdk/spawn_sdk)
[Java](https://github.com/eigr/spawn-java-std-sdk)

## Usage instructions

Check if the playground was installed correctly.

1. Check ActorSystem resources:
```
kubectl get actorsystem -n default
```

2. Check ActorHost resources:
```
kubectl get actors -n default
```

3. Check for all created resources:
```
kubectl get all -n default
```

### View the logs using the commands below.

In a terminal session type the following command:
```
kubectl logs -f deploy/empire -n default
```

And in another terminal session repeat to receive the rebel logs:
```
kubectl logs -f deploy/rebels -n default
```

