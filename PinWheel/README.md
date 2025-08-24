# PinWheel

This example demonstrates how to animate an image using `RotationAnimation` in Qt Quick. A pinwheel graphic oscillates back and forth to simulate rotation, and users can start/stop the animation by clicking on it.

It introduces key Qt QML features such as:
- `RotationAnimation`
- `MouseArea` for interactivity
- UI layout using `anchors`
- Image resource loading via `qrc`

---

## Project Structure

- `main.qml` – Main UI with pinwheel animation
- `Images/` – Contains `pinwheel.jpg`, `stick.jpg`, and `background.jpg`
- `PinWheel.pro` – Qt project file used by `qmake`
- `resources.qrc` – Resource file mapping image paths

---

## Requirements

- **Qt Version:** 5.15 or later
- **Build System:** qmake
- **Compiler:** Make / MSVC / g++

---

## How to Build and Run

### Step 1: Configure the Project

Open the `.pro` file (`PinWheel.pro`) in **Qt Creator** and build using **qmake**.

Or use command line:

```bash
qmake
make -j8
