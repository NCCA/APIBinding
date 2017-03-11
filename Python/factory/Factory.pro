QT-= core gui

TARGET = factory.so
SOURCES+=$$PWD/src/Factory.cpp
HEADERS+=$$PWD/include/Factory.h
INCLUDEPATH+=$$PWD/include/
QMAKE_LFLAGS += -shared
CONFIG -= app_bundle
CONFIG += console
CONFIG += c++11
INCLUDEPATH+=../
QMAKE_CXXFLAGS+=$$system(python-config --cflags)
QMAKE_LFLAGS+=$$system(python-config --ldflags)

OTHER_FILES+=$$PWD/testFactory.py



