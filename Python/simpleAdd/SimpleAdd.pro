QT-= core gui

TARGET = example.so
SOURCES+=$$PWD/simpleAdd.cpp
QMAKE_LFLAGS += -shared
CONFIG -= app_bundle
CINFIG += console
INCLUDEPATH+=../
QMAKE_CXXFLAGS+=$$system(python-config --cflags)
QMAKE_LFLAGS+=$$system(python-config --ldflags)





