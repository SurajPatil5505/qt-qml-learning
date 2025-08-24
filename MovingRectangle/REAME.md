# Moving & Bouncing Rectangle with Keys

This is a simple QML application using **Qt Quick** that demonstrates how to move a rectangle using keyboard arrow keys and trigger a bounce animation when it hits the edges of the window.

---

## Features

- Move a rectangle using `Arrow Keys`
- Bounce animation when hitting any window boundary
- Real-time logging of X and Y coordinates
- Smooth key interaction with `Keys.onPressed` handling

---

## Project Structure

- `main.qml` – Contains the full logic and UI
- `MovingRectangle.pro` – Qt project file for use with `qmake` (optional)

---

## Requirements

- **Qt Version:** 5.15 or later
- **Modules:** QtQuick, QtQuick.Controls
- **Build System:** qmake
- **Environment:** Qt Creator or terminal with Qt tools

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open the `.pro` file (if using).
2. Ensure the Qt Quick kit is selected.
3. Build and run the project.

### Option 2: Using Command Line

```bash
qmake
make -j4
