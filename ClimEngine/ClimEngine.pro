#-------------------------------------------------
#
# Project created by QtCreator 2016-06-23T16:54:00
#
#-------------------------------------------------

QT       -= gui

TARGET = ClimEngine
TEMPLATE = lib

DEFINES += CLIMENGINE_LIBRARY

SOURCES += climengine.cpp

HEADERS += climengine.h\
        climengine_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
