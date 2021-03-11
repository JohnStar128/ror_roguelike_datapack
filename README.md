## Writing Stuff for the Datapack

---
### Functions
Everything that needs to run constantly goes in `namespace:everytick/everytick.mcfunction`.

Every component of the game (chests, enemies, team stuff, etc) goes in it's own `/path/to/file.mcfunction`
Example:
```
risk_of_rain:chest_opening/chest_check
risk_of_rain:stage_start/stage_start
risk_of_rain:new_thing/new_function
```

---

### Tags

Interactables like chests and shops use block tags to decide if they're in a valid spawning position. To add a valid spawning block, add your block to `risk_of_rain/tags/blocks/map_blocks.json`. If there's a collection of like-blocks, you can put them in their own tag and add that block tag to map_blocks. These custom made block tags should go in the `minecraft` namespace. 
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

### Dimensions

Each map will be put into their own dimension. More info TBD