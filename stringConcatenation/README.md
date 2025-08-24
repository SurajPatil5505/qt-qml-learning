# Qt String Concatenation Example

This is a minimal Qt C++ console application that demonstrates how to create a custom class for string concatenation using `QString`. The example is built using the Qt Core module.

---

## Features

- Concatenates two `QString` inputs.
- Simple `QObject`-derived class structure.
- Demonstrates basic Qt class implementation and usage.

---

## Project Structure

- `StringConcatenate.h` – Header file declaring the class
- `StringConcatenate.cpp` – Implementation of string concatenation logic
- `main.cpp` – Entry point of the application to demonstrate usage
- `StringConcatenate.pro` – Qt project file for building with `qmake`

---

## Requirements

- **Qt Version:** 5.15 or later (Qt Core module)
- **Build System:** qmake
- **Compiler:** g++, clang++, or MSVC

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open the `.pro` file (`StringConcatenate.pro`) in **Qt Creator**.
2. Build the project.
3. Run the application from within Qt Creator.

### Option 2: Using Command Line

In the root project directory, run:

```bash
qmake
make -j4
