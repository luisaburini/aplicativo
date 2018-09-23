import QtQuick 2.0
import QtQuick.Controls 2.4

Item {

    Rectangle{
        anchors.fill:parent
        color: "#f3736a"

        ScrollView {
            anchors.fill: parent

            ListView {
                width: parent.width
                model: 3
                delegate: Rectangle {
                    color: "white"
                    radius: parent.width/5
                    width: parent.width - 10
                    property int indexRect: index
                    Image{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        source: "qrc:/images/servico" + parent.indexRect + ".png"
                    }
                    Text{
                        anchors.centerIn: parent
                        text: "Servico " + (parent.index + 1)
                    }

                }
            }
        }
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            spacing: parent.width/10
            Botao{
                id: cancelaBotao
                cor: "#7ac5b1"
                corTexto: "black"
                texto: "Cancelar"
                tamFonte: parent.height/30
                altura: tamFonte*1.5
                comprimento: parent.width/5
                raio: 30
                onClicked: mainScreen.state = "EstadoInicial"
            }
            Botao{
                id: botaoConfirma
                texto: "Ok!"
                tamFonte: 15
                cor: "#7ac5b1"
                corTexto: "black"
                comprimento:parent.width/5
                altura: 30
                raio: 30
                onClicked: {
                    mainScreen.state = "EstadoInicial"
                }
            }
        }
    }


}
