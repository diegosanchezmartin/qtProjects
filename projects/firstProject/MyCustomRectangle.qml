import QtQuick 2.0

Item {
    property string etiqueta: "Cuarto Rectángulo"
    property alias customRectangle: rectanguloElemento

    Rectangle {
        id: rectanguloElemento
        objectName: "cuartoRectangulo"
        height: parent.height
        width: parent.width
        color: "darkSalmon"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                etiquetaConValor.value -= 1
            }
        }
    }

    Text{
        id: cuartoRectanguloEtiqueta
        objectName: "cuartoRectanguloEtiqueta"
        text: parent.etiqueta
        anchors.top: rectanguloElemento.bottom
        anchors.margins: 5
    }
}
