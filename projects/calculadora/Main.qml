import QtQuick
import QtQuick.Window
import "calculos.js" as CalcEngine

Window {
    id: window
    width: 200
    height: 400
    visible: true
    title: qsTr("Calculadora")

    function digitPressed(digit) {
        CalcEngine.digitPressed(digit)
    }

    Rectangle {

        width: 200
        height: 400
        color: "black"

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            spacing: 5

            Rectangle {
                color: "white"
                height: 50
                width: parent.width
                Text {
                    id: numerosCalculadora
                    anchors.fill: parent
                    text: ""
                    width: parent.width
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignRight
                    font.pixelSize: 36
                }
            }

            component BotonNum: BotonNumeros {
                onPressed: function() {
                    window.digitPressed(text)
                }
            }

            component BotonOp: BotonOperaciones {
                onPressed: function() {
                    window.digitPressed(text)
                }
            }

            component BotonEsp: BotonEspecial {
                onPressed: function() {
                    window.digitPressed(text)
                }
            }

            Row {

                Column {
                    id: primeraColumna
                    spacing: 5

                    BotonEsp{
                        tecla: "AC"
                        width: 50
                        height: 50
                        text: "AC"
                    }

                    BotonNum{
                        text: "5"
                        numero: 7
                        width: 50
                        height: 50
                    }

                    BotonNum{
                        numero: 4
                        width: 50
                        height: 50
                        text: "4"
                    }

                    BotonNum{
                        numero: 1
                        width: 50
                        height: 50
                        text: "1"
                    }

                    BotonNum{
                        numero: 0
                        width: 50
                        height: 50
                        text: "0"
                    }

                }

                Column {
                    id: segundaColumna
                    spacing: 5

                    BotonEsp{
                        tecla: "√"
                        width: 50
                        height: 50
                        text: "√"
                    }

                    BotonNum{
                        numero: 8
                        width: 50
                        height: 50
                        text: "8"
                    }

                    BotonNum{
                        numero: 5
                        width: 50
                        height: 50
                        text: "4"
                    }

                    BotonNum{
                        numero: 2
                        width: 50
                        height: 50
                        text: "2"
                    }

                    BotonEsp{
                        tecla: ""
                        width: 50
                        height: 50
                        text: ""
                    }

                }

                Column {
                    id:terceraColumna
                    spacing: 5

                    BotonEsp{
                        tecla: "%"
                        width: 50
                        height: 50
                        text: "%"
                    }


                    BotonNum{
                        numero: 9
                        width: 50
                        height: 50
                        text: "9"
                    }

                    BotonNum{
                        numero: 6
                        width: 50
                        height: 50
                        text: "6"
                    }

                    BotonNum{
                        numero: 3
                        width: 50
                        height: 50
                        text: "3"
                    }

                    BotonEsp{
                        tecla: ","
                        width: 50
                        height: 50
                        text: ","
                    }

                }

                Column {
                    id:cuartaColumna
                    spacing: 5

                    BotonOp{
                        operacion: "x"
                        width: 50
                        height: 50
                        text: "x"
                    }

                    BotonOp{
                        operacion: "/"
                        width: 50
                        height: 50
                        text: "/"
                    }

                    BotonOp{
                        operacion: "-"
                        width: 50
                        height: 50
                        text: "-"
                    }

                    BotonOp{
                        operacion: "+"
                        width: 50
                        height: 50
                        text: "+"
                    }

                    BotonOp{
                        operacion: "="
                        width: 50
                        height: 50
                        text: "="
                    }

                }

            }

        }

    }

}
