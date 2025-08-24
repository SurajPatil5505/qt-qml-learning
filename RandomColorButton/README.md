# Random Color Changing Button

This is a simple QML application built with **Qt Quick** and **Qt Quick Controls 2**, demonstrating how to implement a button that changes its background color to a random value each time it is clicked.

---

## Features

- A single button centered on the window
- Changes to a random color when clicked
- Styled with rounded corners and a border

---

## Project Structure
- `main.cpp` – Entry point of the application
- `main.qml` – Contains the full QML UI and logic
- `RandomColorButton.pro` – Qt project file used with `qmake`

---

## Requirements

- **Qt Version:** 5.15 or later
- **Modules:** QtQuick, QtQuick.Controls
- **Build System:** qmake
- **Environment:** Qt Creator or command line

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open the `.pro` file in **Qt Creator**.
2. Configure the kit (ensure it supports Qt Quick).
3. Build and run the application.

### Option 2: Using the Command Line

```bash
qmake
make -j4
