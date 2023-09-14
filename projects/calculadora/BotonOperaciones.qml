import QtQuick 2.0
import QtQuick.Controls

Button {
    id: botonOperaciones
    property string operacion: ""
    property color texColor: "#ffa500"

    background: Rectangle {
        color: parent.texColor
    }

    contentItem: Text {
        anchors.fill: parent
        text: parent.operacion
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        color: "white"
        states: [
            State {
                name: "pulsado"
                when: botonOperaciones.pressed
                PropertyChanges {
                    target: botonOperaciones
                    texColor: "#f5deb3"
                }
            }
        ]
    }
}
