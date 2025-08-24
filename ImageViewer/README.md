# QML Image Viewer

This is a simple QML-based **Image Viewer** application built using **Qt Quick** and **Qt Quick Controls 2**. It allows users to open and close images from a predefined list using a simple menu-driven interface.

---

## Features

- Menu-driven image operations: **Open** and **Close**
- Built-in list of image files via `ListModel`
- Clickable image list displayed in a custom file browser
- Displays images using `Image` element with `PreserveAspectFit`
- Smooth user interaction with `MouseArea` and `ListView`

---

## Requirements

- **Qt Version:** 5.15 or later
- **Modules Required:** QtQuick, QtQuick.Controls
- **Build System:** `qmake`
- **Environment:** Qt Creator or terminal with Qt tools

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open `ImageViewer.pro` in **Qt Creator**
2. Make sure the `qml.qrc` is properly registered (if used)
3. Build and run the project
4. Use **File → Open Image** to show available images

### Option 2: Command Line

```bash
qmake
make
