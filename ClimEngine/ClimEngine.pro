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

unix|win32: LIBS += -L$$OUT_PWD/../ClimCLib/ -lClimCLib

INCLUDEPATH += $$PWD/../ClimCLib/include
DEPENDPATH += $$PWD/../ClimCLib/include
