TARGET = example1
TEMPLATE = lib

DEFINES += BASIC_LIBRARY

HEADERS += \
    example1.h

SOURCES += \
    example1.cpp

target.path = /usr/lib
INSTALLS += target
