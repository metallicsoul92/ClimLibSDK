#-------------------------------------------------
#
# Project created by QtCreator 2016-06-23T16:50:08
#
#-------------------------------------------------

QT       -= core gui

TARGET = ClimCLib
TEMPLATE = lib

DEFINES += CLIMCLIB_LIBRARY

SOURCES += climclib.c

HEADERS += climclib.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
