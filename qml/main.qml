import QtQuick 2.0
import QtQuick.Layouts 1.11
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Controls.Material 2.1

import io.backend.main 1.0
import io.backend.externalFile 1.0

ApplicationWindow {
    id: page
    width: 300
    height: 200
    visible: true
    Material.theme: Material.Dark
    Material.accent: Material.Red

    Bridge {
        id: bridge
    }

    Bridge2 {
        id: bridge2
    }

    Text {
        id: leftlabel
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Qt for Python"
        color: "white"
    }

    Button {
        id: botao
        anchors.top: leftlabel.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: "Press this button"

        property bool changer: true

        onClicked: {
            if (changer == true) {
                leftlabel.text = bridge.test("Text from QML + ")
                changer = !changer
            } else {
                leftlabel.text = bridge2.test("Text from QML + ")
                changer = !changer
            }
            
        }
    }
}
