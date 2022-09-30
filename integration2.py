import sys
from pathlib import Path

from PySide6.QtCore import QObject, Slot
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine, QmlElement
from PySide6.QtQuickControls2 import QQuickStyle


# To be used on the @QmlElement decorator
# (QML_IMPORT_MINOR_VERSION is optional)
QML_IMPORT_NAME = "io.backend.integration2"
QML_IMPORT_MAJOR_VERSION = 1


@QmlElement
class Bridge2(QObject):

    @Slot(str, result=str)
    def test(self, text):
        return text+" Text from integration2.py"