TARGET = aftalk
DESTDIR = ../../../bin

TEMPLATE = app

CONFIG += qt
QT += xml network

QMAKE_CXXFLAGS += $$(AF_PYTHON_INC)

DIR = ../../talk
LIBS += -L../libafqt -lafqt
LIBS += -L../libafanasy -lafanasy
LIBS += $$(AF_PYTHON_LIB)

SOURCES += $$system(ls $$DIR/*.cpp)
HEADERS += $$system(ls $$DIR/*.h)

win32:DEFINES += WINNT
macx:DEFINES += MACOSX
unix:DEFINES += LINUX
