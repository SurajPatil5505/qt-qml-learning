# Qt Text File Reader (Console App)

This is a simple  **QT-Core** C++ console application that reads a plain text file line-by-line and prints the contents to the console. It demonstrates the use of `QObject`, `QFile`, `QTextStream`, and basic exception-style error handling using `QString`.

---

## Features

- Read and print text files from a given path.
- Graceful error handling with Qt-style debug output.
- Cross-platform (Linux, Windows, macOS) using Qt Core only.

---

## Project Structure
- `TextFileReader.hpp` - Class declaration
- `TextFileReader.cpp` - Class implementation
- `main.cpp` - Entry point that uses TextFileReader
- `File_IO.pro` - Qt project file `qmake`

---

## Requirements

- **Qt Version:** 5.15 or later (Core module only)
- **Compiler:** g++, clang++, or MSVC
- **Build System:** `qmake`

---

## How to Build and Run

### Option 1: Using Qt Creator

1. Open `TextFileReader.pro` in **Qt Creator**.
2. Build the project using the Qt Kit.
3. Run the application from within Qt Creator.
4. Provide a valid file path in `main.cpp`.

### Option 2: Using Command Line

From the project root directory:

```bash
qmake
make