QT-= core gui

TARGET = classTest.so
SOURCES+=$$PWD/class.cpp
QMAKE_LFLAGS += -shared
CONFIG -= app_bundle
CONFIG += console
CONFIG+=c++11
INCLUDEPATH+=../
QMAKE_CXXFLAGS+=$$system(python-config --cflags)
QMAKE_LFLAGS+=$$system(python-config --ldflags)





