#-------------------------------------------------
#
# Project created by QtCreator 2016-06-23T16:50:08
#
#-------------------------------------------------

QT       -= core gui

TARGET = ClimCLib
TEMPLATE = lib
CONFIG +=staticlib


unix{
QMAKE_CFLAGS += -g
QMAKE_CFLAGS += -Wall
QMAKE_CFLAGS += -pedantic-errors
QMAKE_CFLAGS += -std=c11
}
win32{

QMAKE_CFLAGS += /Wall

}

DEFINES += CLIMCLIB_LIBRARY

INCLUDEPATH += include/ \
               ../Dependencies/Source/SDL/include \
               ../Dependencies/Source/SDL_image

DEPENDPATH += $include/ \
               $$PWD/../Dependencies/Source/SDL/include \
               $$PWD/../Dependencies/Source/SDL_image

SOURCES += src/adt/darray.c \
           src/adt/dlist.c \
           src/adt/hashmap.c \
           src/adt/slist.c \
           src/adt/matrix.c \
           src/adt/vector2.c \
           src/adt/vector3.c \
           src/adt/vector4.c \
           src/utility/common.c \
           src/utility/filex.c \
           src/utility/vfs.c \
           src/physics/aabb.c \
           src/physics/circle.c \
           src/physics/line.c \
           src/physics/rectangle.c \
           src/graphics/graphics_common.c \
           src/graphics/renderer.c \
           src/graphics/renderingAPI.c \
           src/graphics/shapes.c \
           src/graphics/texture.c \
           src/graphics/window.c \

HEADERS += include/adt/darray.h \
           include/adt/dlist.h \
           include/adt/hashmap.h \
           include/adt/slist.h \
           include/adt/matrix.h \
           include/adt/vector2.h \
           include/adt/vector3.h \
           include/adt/vector4.h \
           include/utility/common.h \
           include/utility/filex.h \
           include/utility/vfs.h \
           include/physics/aabb.h \
           include/physics/circle.h \
           include/physics/line.h \
           include/physics/orectangle.h \
           include/physics/physicsIntersectData.h \
           include/physics/rectangle.h \
           include/physics/segment.h \
           include/graphics/graphics_common.h \
           include/graphics/renderer.h \
           include/graphics/renderingAPI.h \
           include/graphics/shapes.h \
           include/graphics/texture.h \
           include/graphics/window.h \
           include/ClimCLib.h

win32 {
     HEADERS += include/utility/vfs_windows.h
     #SOURCES += src/utility/vfs_windows.c
    LIBS += -L$$PWD/../Dependencies/Platforms/Windows/SDL2/Debug/ -lSDL2main -lSDL2 \
            -L$$PWD/../Dependencies/Platforms/Windows/SDL2_image/ -lSDL2_image
}

unix {
    HEADERS += include/utility/vfs_linux.h
    SOURCES += src/utility/vfs_linux.c

    target.path = /usr/lib
    INSTALLS += target
}






