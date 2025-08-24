# MOdel view delegate

This is a simple Qt Quick (QML) application that uses a `Repeater` and `ColumnLayout` to display a vertical list of rectangles numbered from 0 to 9. Each rectangle is styled with a light blue fill, a blue border, and bold centered text.

---

## Project Structure

- `main.qml` – The main QML file that defines the UI
- `main.cpp` – Minimal C++ entry point to launch the QML
- `ModelViewDelegate.pro` – Qt project file used with `qmake`
- `qml.qrc` – Qt resource file to include QML in the binary

---

## Features

- Dynamically creates 10 rectangles using a `Repeater`
- Each rectangle contains a centered, bold number (0–9)
- Uses `ColumnLayout` for clean vertical alignment

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

1. Open `ModelViewDelegate.pro` in **Qt Creator**
2. Configure a Qt 5.15+ Kit
3. Click **Build** then **Run**

### Using the Command Line

```bash
qmake
make -j8
