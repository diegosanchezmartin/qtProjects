/*import QtQuick 2.0

Rectangle {
    id: botonNumeros
    property int numero: 0
    color: "grey"

    Text {
        id: numeroBoton
        anchors.fill: parent
        text: parent.numero
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}*/

import QtQuick 2.0
import QtQuick.Controls

Button {
    id: botonNumeros
    property int numero: 0
    property color texColor: "#808080"

    background: Rectangle {
        color: parent.texColor
    }

    contentItem: Text {
        anchors.fill: parent
        text: parent.numero
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: "white"
        states: [
            State {
                name: "pulsado"
                when: botonNumeros.pressed
                PropertyChanges {
                    target: botonNumeros
                    texColor: "#778899"
                }
            }
        ]
    }
}
