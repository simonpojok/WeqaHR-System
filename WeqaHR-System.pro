QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

unix:!macx: LIBS += -L$$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Linux/lib/x64/ -lBS_SDK_V2

INCLUDEPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Linux/lib/x64
DEPENDPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Linux/lib/x64

unix:!macx: LIBS += -L$$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Linux/lib/x86/ -lBS_SDK_V2

INCLUDEPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include
DEPENDPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Window/lib/x64/ -lBS_SDK_V2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Window/lib/x64/ -lBS_SDK_V2d

INCLUDEPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon/config
DEPENDPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon/config


win32:CONFIG(release, debug|release): LIBS += -L$$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Window/lib/x86/ -lBS_SDK_V2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/BioStarSDK_V2.6.4.1_20200225/Lib/Window/lib/x86/ -lBS_SDK_V2d

INCLUDEPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon/data
DEPENDPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon/data

INCLUDEPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon/protocol
DEPENDPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon/protocol

INCLUDEPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon
DEPENDPATH += $$PWD/BioStarSDK_V2.6.4.1_20200225/Include/BSCommon
