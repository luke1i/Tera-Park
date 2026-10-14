# Tera Park

Tera Park is a small 2D platformer made in Godot 4. Move across platforms, dodge the spikes, and collect the coins on the way to the green goal. Touching a spike sends you back to the start.

## Controls

- **A / D** or **Left / Right arrows**: move
- **Space**, **W**, or **Up arrow**: jump

## Play in the browser

Demo: [PASTE YOUR ITCH.IO LINK HERE]

## Run it locally

1. Install [Godot 4](https://godotengine.org/download) (4.3 or newer).
2. Clone or download this repository.
3. Open Godot, click **Import**, and select the `project.godot` file in this folder.
4. Press **F5** (or the Play button) to run the game.

## Files

- `project.godot`: project settings and input mapping
- `main.tscn`: the main level, with platforms, spikes, coins, and the goal
- `main.gd`: coin counter and win screen logic
- `player.gd`: player movement and jumping
- `coin.gd`: coin pickup behavior
- `icon.svg`: project icon
