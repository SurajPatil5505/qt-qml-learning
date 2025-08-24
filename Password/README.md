# Password Checker

This is a simple Qt Quick (QML) application that demonstrates how to create a custom password input field with validation logic and a visual popup notification. It provides a minimal UI where users can enter a password and receive a **"Success!"** or **"Failure!"** message based on correctness.

---

## Project Structure

- `main.qml` – The main QML file containing the password input, button, and popup logic
- `CustomTextField.qml` – A custom reusable component for the password input (assumed based on usage)
- `main.cpp` – C++ entry point
- `Password.pro` – Qt project file
- `qml.qrc` – Resource file for packaging QML files

---

## Features

- Custom password input field (with masking)
- Check button with logic comparing input against a preset password
- Notification popup with color-coded success/failure message
- Auto-dismisses notification after 2 seconds

---

## Requirements

- **Qt Version:** 5.15 or later
- **Modules Used:** `QtQuick`, `QtQuick.Controls`
- **Build System:** `qmake`
- **Compiler:** 
  - Linux/macOS: `make`, `g++`
  - Windows: `nmake`, MSVC (or use Qt Creator)

---

## How to Build and Run

### Using Qt Creator

1. Open `Password.pro` in **Qt Creator**
2. Configure with a Qt 5.15+ Kit
3. Click **Run**

### Using Command Line

```bash
qmake
make -j8
