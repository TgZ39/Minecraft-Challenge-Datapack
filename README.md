# Minecraft Challenge Datapack

A Minecraft Datapack that adds new Challenges into the game.

It was written in mcfunction using Atom.


## Installing

**1.** Download the .zip from Releases

**2.** Put the .zip in the datapacks folder of the world you want to play the Challenges in.

    Path: C:\Users\USERNAME\AppData\Roaming\.minecraft\saves\WORLD\datapacks
    
    
## How to Use?

Almost all things can be controlled via `/trigger`, the rest is controlled via `/scoreboard players set`

### Triggers:

#### Custom Health:

`custom_health_switch`      -   Starts and stops Custom Health Challenge.

`custom_health_reset`       -   Sets Health to 10 Hearts and regenerates Health & Saturation.

#### Lava Chase:

`lava_chase_switch`         -   Starts and stops Lava Chase Challenge.

#### Random Effect:

`effect_challenge_switch`   -   Starts and stops Random Effect Challenge.

`effect_challenge_reset`    -   Removes all effects and resets the cooldown for the next effect.

#### Random Mob:

`random_mob_switch`         -   Starts and stops Random Mobs Challenge.

`random_mob_reset`          -   Resets the cooldown for next Mob.

#### Timer:

`timer_switch`              -   Starts and stops the Timer.

`timer_reset`               -   Resets the Timer.

### Scoreboards

#### Custom Health:

Scoreboard: `custom_health`

Player: `custom_health_dummy`

**This scoreboard controls the amount of Hearts you have in the Custom Health Challenge.**

#### Random Effect:

Scoreboard: `effect_seconds`

Player: `effect_delay`

**This scoreboard controls the delay between effects are apllied.**

#### Random Mob:

Scoreboard: `mob_seconds`

Player: `mob_delay`

**This scoreboard controls the delay between Mobs are spawned.**

## License

No License.

