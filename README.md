## Writing Stuff for the Datapack

---
### Functions
Everything that needs to run constantly goes in `namespace:everytick/everytick.mcfunction`.

Everything that should be initialized on first load/reload should go in `init.mcfunction`. 

Every component of the game (chests, enemies, team stuff, etc) goes in it's own `/path/to/file.mcfunction`.\
Example:
```
risk_of_rain:chest_opening/chest_check
risk_of_rain:stage_start/stage_start
risk_of_rain:new_thing/new_function
```

---

### Tags

Interactables like chests and shops use block tags to decide if they're in a valid spawning position. To add a valid spawning block, add your block to `risk_of_rain/tags/blocks/map_blocks.json`. If there's a collection of like-blocks, you can put them in their own tag and add that block tag to map_blocks. These custom made block tags should go in the `minecraft` namespace.\
Example:
`risk_of_rain:map_blocks.json`:
```json
{
    "values": [
        "minecraft:dirt",
        "#minecraft:base_stone_overworld",
        "#risk_of_rain:sandstones"
    ]
}
```
`minecraft:sandstones.json`:
```json
{
    "values": [
        "minecraft:sandstone",
        "minecraft:cut_sandstone",
        "minecraft:chisleled_sandstone"
    ]
} 
```

---

### Predicates

Predicates are curently used in setting playable areas around maps. These areas are effectively large rectangles chained together to create one large area assuming the shape of the map.\
When setting these areas, the parent condition should be `minecraft:alternative`, which allows you to chain multiple conditions together.
Each location should be contained in an `entity_properties` condition.\
Example:
`risk_of_rain:maps/map_name.json`:
```json
{
    "condition": "minecraft:alternative",
    "terms": [
       {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
                "location": {
                    "position": {
                        "x": {
                            "max": 98,
                            "min": -67
                        },
                        "y": {
                            "max": 100,
                            "min": 0
                        },
                        "z": {
                            "max": 20,
                            "min": -34
                        }
                    }
                }
            }
        },
        {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
                "location": {
                    "position": {
                        "x": {
                            "max": 79,
                            "min": -64
                        },
                        "y": {
                            "max": 100,
                            "min": 0
                        },
                        "z": {
                            "max": -34,
                            "min": -59
                        }
                    }
                }
            } 
        },
        {
        // etc
        }
    ]
}
```

---

### Dimensions

Each map will be put into their own dimension. More info TBD