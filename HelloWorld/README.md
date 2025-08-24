# HelloWorld

This is a basic Qt QML application that demonstrates how to set up and run a minimal QML-based GUI using Qt 5.15. It serves as a starting point for beginners to understand how to structure a QML project and build it using the Qt build system (`qmake`).

---

## Project Structure

- `main.cpp` – Entry point of the application
- `main.qml` – QML file displaying the UI
- `HelloWorld.pro` – Qt project file used by `qmake`

---

## Requirements

- **Qt Version:** 5.15 or later
- **Build System:** qmake
- **Compiler:** Make / g++ (Linux), or `nmake` / MSVC (Windows)

---

##  How to Build and Run

###  Step 1: Configure the Project

Open the `.pro` file (`HelloWorld.pro`) in **Qt Creator** and choose it as the build configuration for **qmake**.

> Or use the command line steps below if you're not using Qt Creator.

### Step 2: Build via Command Line

Run the following commands from the project root:

```bash
qmake
make -j8
