import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    id: ventanaPrincipal
    width: 740
    height: 580
    visible: true
    title: qsTr("Hello World")

    function cambiarColorRectangulos() {
        rectangle.color = "green"
        secondRectangle.color = "orange"
        thirdRectangle.color = "brown"
        miRectangulo.customRectangle.color = "darkCyan"
        console.log("Rectángulos cambiados a verde, naranja y marrón")
    }

    function cambiarColorRectangulosAlOriginal() {
        rectangle.color = "blue"
        secondRectangle.color = "red"
        thirdRectangle.color = "yellow"
        miRectangulo.customRectangle.color = "darkSalmon"
        console.log("Rectángulos cambiados a azul, rojo y amarillo")
    }

    Text {
        id: etiqueta
        text: "Hola mundo!"
    }

    Text {
        id: etiquetaConValor
        property int value: 15
        text: "El valor almacenado es: " + etiquetaConValor.value
        y: etiqueta.y + 20
    }

    Text {
        id: botonCambiarColor
        text: "Cambiar color rectángulos"
        x: etiqueta.x + 90

        MouseArea {
            anchors.fill: parent
            onClicked: {
                ventanaPrincipal.cambiarColorRectangulos()
            }
        }
    }

    Text {
        id: segundoBotonCambiarColor
        text: "Cambiar color rectángulos al original"
        x: etiqueta.x + 260

        MouseArea {
            anchors.fill: parent
            onClicked: {
                ventanaPrincipal.cambiarColorRectangulosAlOriginal()
            }
        }
    }

    Item {
        Rectangle {
            id: rectangle
            objectName: "firstRectangle"
            width: 200
            height: 250
            x: 20
            y: 50
            color: "blue"

            Item {
                y: thirdRectangle.height
                Rectangle {
                    id: thirdRectangle
                    objectName: "thirdRectangle"
                    color: "yellow"
                    width: rectangle.width/2
                    height: rectangle.height/2


                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            etiquetaConValor.value += 1
                        }
                    }
                }
                Text {
                    id: thirdRectangleEtiqueta
                    text: qsTr("Tercer Rectángulo")
                    anchors.horizontalCenter: thirdRectangle.horizontalCenter
                    anchors.top: thirdRectangle.bottom
                    anchors.topMargin: 5
                }
            }
        }
        Text {
            id: firstRectangleEtiqueta
            text: qsTr("Primer Rectángulo")
            anchors.horizontalCenter: rectangle.horizontalCenter
            anchors.top: rectangle.bottom
            anchors.topMargin: 25
        }
    }

    Item {
        Rectangle {
            id: secondRectangle
            objectName: "secondRectangle"
            width: 200
            height: 250
            x: 240
            y: 50
            color: "red"
            MyCustomRectangle{
                id: miRectangulo
                width: secondRectangle.width/2
                height: secondRectangle.height/2
                anchors.centerIn: parent
            }
        }
        Text {
            id: secondRectangleEtiqueta
            text: qsTr("Segundo rectángulo")
            anchors.horizontalCenter: secondRectangle.horizontalCenter
            anchors.top: secondRectangle.bottom
            anchors.topMargin: 5
        }
    }
}
