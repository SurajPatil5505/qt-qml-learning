# Button Color Change Example

This is a basic Qt QML application that demonstrates how to create a column of clickable buttons using `Repeater`, and dynamically change the background color of each button when pressed. It also displays the index of the last clicked button.

---

## Project Structure

- `main.cpp` – Entry point of the application (optional, if you're launching via C++)
- `main.qml` – Contains the QML code for the user interface
- `ButtonColorChange.pro` – Qt project file used by `qmake`

---

## Features

- **Dynamic Button Creation** using `Repeater`
- **Click Feedback**: Displays the index of the clicked button
- **Color Change on Press**: Buttons turn yellow when pressed and return to grey on release

---

## Requirements

- **Qt Version:** 5.15 or later
- **Build System:** qmake
- **Compiler:** g++ / make (Linux), MSVC / nmake (Windows)

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open `ButtonColorChange.pro` in **Qt Creator**.
2. Configure the project to use **qmake**.
3. Click **Run** to launch the application.

### Option 2: Using the Command Line

Open a terminal in the project root and run:

```bash
qmake
make -j8
