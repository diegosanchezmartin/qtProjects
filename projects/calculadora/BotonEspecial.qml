/*import QtQuick 2.0

Rectangle {
    id: botonEspecial
    property string tecla: ""
    color: "darkgray"

    Text {
        id: numeroBoton
        anchors.fill: parent
        text: parent.tecla
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}*/

import QtQuick 2.0
import QtQuick.Controls

Button {
    id: botonEspecial
    property string tecla: ""
    property color texColor: "#a9a9a9"

    background: Rectangle {
        color: parent.texColor
    }

    contentItem: Text {
        anchors.fill: parent
        text: parent.tecla
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: "white"
        states: [
            State {
                name: "pulsado"
                when: botonEspecial.pressed
                PropertyChanges {
                    target: botonEspecial
                    texColor: "#696969"
                }
            }
        ]
    }
}
