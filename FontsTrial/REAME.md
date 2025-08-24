# Font Styling Application (QML)

This is a simple QML-based application created using **Qt Quick** and **Qt Quick Controls 2** that allows users to dynamically style a block of text. Users can choose between font styles (Regular, Italic, Bold) and adjust the font size from a dropdown menu.

---

## Features

- Selectable font **style**: Regular, Italic, or Bold
- Selectable font **size**: 10 to 20 pixels
- Real-time text preview in a `TextArea`
- Built entirely with QML (no C++ backend)

---

##  Requirements

- **Qt Version:** 5.15 or later
- **Modules Required:** QtQuick, QtQuick.Controls, QtQuick.Layouts
- **Build System:** `qmake`
- **Environment:** Qt Creator or terminal with Qt setup

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open `FontStylingApp.pro` in **Qt Creator**
2. Select a kit with **Qt 5.15+**
3. Click **Build** then **Run**

### Option 2: Using the Command Line

```bash
qmake
make

