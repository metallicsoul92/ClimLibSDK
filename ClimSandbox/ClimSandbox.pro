QT += core
QT -= gui

CONFIG += c++11

TARGET = ClimSandbox
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp

INCLUDEPATH += ../ClimCLib/ \
               ../Dependencies/Source/SDL/include \
               ../Dependencies/Source/SDL_image

DEPENDPATH += ../ClimCLib/include/ \
               $$PWD/../Dependencies/Source/SDL/include \
               $$PWD/../Dependencies/Source/SDL_image
win32 {

    LIBS += -L$$PWD/../Dependencies/Platforms/Windows/SDL2/Debug/ -lSDL2main -lSDL2 \
            -L$$PWD/../Dependencies/Platforms/Windows/SDL2_image/ -lSDL2_image
}

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
