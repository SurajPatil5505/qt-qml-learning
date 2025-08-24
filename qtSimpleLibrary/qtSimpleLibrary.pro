TEMPLATE = subdirs

SUBDIRS += \
    Qml \
    qtLib \

Qml.depends = qtLib
