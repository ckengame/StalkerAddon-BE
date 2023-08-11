import json

while True:
    name = input()

    obj = {
        "format_version": "1.10.0",
        "animation_controllers": {
            f"controller.animation.player.{name}": {
                "initial_state": "default",
                "states": {
                    "default": {
                        "transitions": [
                            { "reload": f"q.scoreboard('{name}') == 0 && q.is_item_name_any('slot.weapon.mainhand', 'scm:{name}') && q.is_using_item" },
                            { "shoot" : f"q.scoreboard('{name}') >= 1 && q.is_item_name_any('slot.weapon.mainhand', 'scm:{name}') && q.is_using_item" }
                        ]
                    },
                    "reload": {
                        "on_exit": ["@s gun:base", f"/stopsound @s {name}.reload"],
                        "animations": [f"{name}_reload"],
                        "transitions": [
                            { "default": f"q.all_animations_finished || !q.is_item_name_any('slot.weapon.mainhand', 'scm:{name}') || q.mark_variant != 2" }
                        ]
                    },
                    "shoot": {
                        "on_entry": ["@s gun:shoot"],
                        "animations": [f"{name}_shoot"],
                        "transitions": [
                            { "default": "q.all_animations_finished" }
                        ]
                    }
                }
            }
        }
    }
    with open(f"{name}.json", 'w') as file:
        json.dump(obj, file, indent=4, ensure_ascii=False)