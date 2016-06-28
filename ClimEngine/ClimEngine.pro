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



win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../ClimCLib/release/ -lClimCLib
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../ClimCLib/debug/ -lClimCLib

INCLUDEPATH += $$PWD/../ClimCLib
DEPENDPATH += $$PWD/../ClimCLib

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ClimCLib/release/libClimCLib.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ClimCLib/debug/libClimCLib.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ClimCLib/release/ClimCLib.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../ClimCLib/debug/ClimCLib.lib
