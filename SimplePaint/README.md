# SimplePaint

This is a basic Qt QML application that implements a simple paint/drawing tool. It uses the `Canvas` and `MouseArea` elements from QtQuick to enable freehand drawing, and includes a color palette for changing stroke colors. This project is a beginner-friendly example to explore drawing with QML.

---

## Project Structure

- `main.cpp` – Entry point of the application (see below for minimal setup)
- `main.qml` – Main QML file containing the drawing logic and UI
- `SimplePaint.pro` – Qt project file used by `qmake`

---

## Requirements

- **Qt Version:** 5.15 or later
- **Build System:** qmake
- **Compiler:** 
  - Linux/macOS: `make`, `g++`
  - Windows: `nmake`, MSVC (or build via Qt Creator)

---

## How to Build and Run

### Step 1: Project Setup

Open the `.pro` file (`SimplePaint.pro`) in **Qt Creator**, configure the build kit (Qt 5.15+), and click "Run".

> Alternatively, build and run from the terminal using the steps below.

### Step 2: Build via Command Line

```bash
qmake
make -j8