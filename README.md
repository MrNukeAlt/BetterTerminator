[![Buy me a Banana](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20Banana&emoji=%F0%9F%8D%8C&slug=nukeman999&button_colour=FFDD00&font_colour=000000&font_family=Bree&outline_colour=000000&coffee_colour=ffffff)](https://www.buymeacoffee.com/nukeman999)
# Bloons Terminator

Bloons Terminator is a utility suite designed to interact with the *Ninja Kiwi Archive* version of Bloons TD Battles. The project consists of two primary components: a graphical HUD overlay and a backend game client that enables automation, command-line chat interactions, and hotkey support.

## Components

### 1. Bloons Terminator HUD (Overlay)

This component provides a visual interface that tracks the game state and displays available commands.

* **Dynamic HUD:** A topmost, semi-transparent window that detects the *Bloons TD Battles* process and positions itself accordingly.


* **Real-time Status:** Displays current "Auto-Round" status.


* **Hotkey Mapping:** Provides a visual reference for "Bloon Send" hotkeys (Shift + Key) and navigation controls.



### 2. The Bloons Terminator (Client)

The core backend client that manages network communication and game logic.

* **Command System:** Enables in-game chat commands such as `/bloonwave`, `/setlives`, `/startround`, and `/surrender`.


* **Automation:** Includes an "Auto-Start" feature that can be toggled to automatically initiate game rounds.


* **Hotkey Integration:** Maps keyboard shortcuts (Up/Down arrows and Shift + Key combinations) to perform game actions like starting rounds or sending bloon waves.


* **Tracker:** Monitors opponent behavior, such as tower placement, upgrades, and sales, and provides alerts regarding game status.



## Features

* **Process Management:** Automatically detects when *Ninja Kiwi Archive.exe* is in focus to apply hotkeys or automation safely.


* **Administrator Privileges:** Automatically requests elevation to ensure the tool can interact with system processes.


* **Customizable Interaction:** Supports dynamic bloon wave sending and live chat relaying.



## Technical Stack

* **Python 3**
* **GUI & Overlays:** `tkinter`

* **System/Game Interaction:** `psutil`, `win32gui`, `win32process`, `ctypes`, and `keyboard`

* **Network & Data:** `socket`, `struct`, `base64`, and `zlib`


## Usage Notes

* **Hotkeys:** Hotkeys are context-aware and will only trigger when the game window is active.


* **Elevation:** The script requires administrative privileges to function correctly.


* **Configuration:** Commands are parsed directly from the in-game chat, allowing players to manage the client without exiting the game.



---

Disclaimer: This tool is designed for the Ninja Kiwi Archive version of Bloons TD Battles. Use of automation tools may be subject to the terms of service of the respective game platform.
