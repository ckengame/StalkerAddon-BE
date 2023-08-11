import json

while True:
    with open('shoot.animation_controllers.json', 'r', encoding='utf-8') as file:
        obj = json.load(file)

    name = input('Name: ')
    obj["animation_controllers"]["controller.animation.player.shoot"]["states"]["default"]["transitions"].append({name: f"variable.{name}"})

    obj["animation_controllers"]["controller.animation.player.shoot"]["states"].update({f"{name}": {"animations": [{f"{name}.shot": f"variable.{name}"}],"transitions": [{"default": "query.all_animations_finished"}]}})

    with open('shoot.animation_controllers.json', 'w', encoding='utf-8') as file:
        obj = json.dump(obj, file, indent=4, ensure_ascii=False)
        file.close()