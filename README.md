# GodotBodyEnteredBug (Godot v4.2.2 stable win64)

## Description of the situation

We have 2 entities:
- entity A (Player)
- entity B (Enemy)

Each entity has a "CollisionShape2D" node.

Entity A has an additional attribute: an Area2D node, which is used with the "body_entered" callback to detect when another entity has entered the range of A.

## Expectation

When an entity other than A enters the Area2D zone, a trigger should be activated.

>[body_entered](https://docs.godotengine.org/en/stable/classes/class_area2d.html) ( Node2D body )
>
> >Emitted when the received body enters this area. body can be a PhysicsBody2D or a TileMap. TileMaps are detected if their TileSet has collision shapes configured. Requires monitoring to be set to true.

## Reality

The trigger is only activated when A initiates movement towards another entity. If another entity moves into A's area, `Area2D.body_entered` is not activated.

## How to reproduce

1. Move the player towards the enemy using the arrow keys, enter and exit the zone.
2. You should observe print statements similar to: Body entered: Enemy:<RigidBody2D#27481081035>.
3. Next, move the enemy towards the player using the WASD/ZQSD keys; note that no callbacks are triggered.




