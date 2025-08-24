# TrafficSignals

This is a simple Qt Quick (QML) application that simulates a basic traffic signal system. The application uses colored rectangles to represent the traffic lights and changes their state in a timed sequence using `Timer` elements.

---

## Project Structure

- `main.qml` – QML file that contains the traffic signal logic and UI
- `main.cpp` – Minimal C++ entry point
- `TrafficSignals.pro` – Qt project file used by `qmake`
- `qml.qrc` – Resource file to bundle QML into the binary

---

## Features

- Cycles through **Green → Yellow → Red → Green** traffic lights
- Timer-based light transition
- Simple and visually intuitive layout using `RowLayout`

---

## Requirements

- **Qt Version:** 5.15 or later
- **Modules:** `QtQuick`, `QtQuick.Controls`, `QtQuick.Layouts`
- **Build System:** `qmake`
- **Compiler:** 
  - Linux/macOS: `make`, `g++`
  - Windows: `nmake`, MSVC (or use Qt Creator)

---

## How to Build and Run

### Using Qt Creator

1. Open `TrafficSignals.pro` in **Qt Creator**
2. Select a Qt 5.15+ Kit
3. Click **Configure**, then **Build and Run**

### Using Command Line

```bash
qmake
make -j8
