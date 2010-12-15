include ( ../../mythconfig.mak )
include ( ../../settings.pro )
include ( ../../programs-libs.pro )

QT += network
TEMPLATE = lib
CONFIG += plugin thread
TARGET = mythzoneminder
target.path = $${LIBDIR}/mythtv/plugins
INSTALLS += target

INCLUDEPATH += $${PREFIX}/include/mythtv/libmythui

# Input
HEADERS += zmconsole.h zmplayer.h zmevents.h zmliveplayer.h zmdefines.h
HEADERS += zmsettings.h zmclient.h

SOURCES += main.cpp zmconsole.cpp zmplayer.cpp zmevents.cpp zmliveplayer.cpp
SOURCES += zmsettings.cpp zmclient.cpp


QT += sql xml

use_hidesyms {
    QMAKE_CXXFLAGS += -fvisibility=hidden
}

include ( ../../libs-targetfix.pro )
