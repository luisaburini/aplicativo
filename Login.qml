import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Item {
    width: Screen.width
    height: Screen.height

    Rectangle{
        anchors.fill: parent
        color: "#7ac5b1"
        Rectangle{
            id: rectBackground
            color: "white"
            radius: 50
            width: parent.width-30
            height: parent.height/2
            anchors.centerIn: parent
            Column{
                anchors.centerIn: parent
                spacing: 10
                Text {
                    id: loginText
                    font.family: coolvetica.name
                    text: "Email"
                    font.pixelSize: 15
                    color: "#b03635"
                }
                TextField{
                    id: textEditLogin
                    width: rectBackground.width-50
                    focus: true
                    font.family: coolvetica.name
                    font.pixelSize: 15
                    Rectangle{
                        color: "#7ac5b1"
                        anchors.bottom: parent.bottom
                        height: 3
                        width: parent.width
                    }
                }
                Text {
                    id: senhaText
                    font.family: coolvetica.name
                    text: "Senha"
                    font.pixelSize: 15
                    color:"#b03635"
                }

                TextField{
                    id: textEditSenha
                    width: rectBackground.width-50
                    focus: true
                    font.family: coolvetica.name
                    font.pixelSize: 15
                    echoMode: TextField.Password

                    Rectangle{
                        color: "#7ac5b1"
                        anchors.bottom: parent.bottom
                        height: 3
                        width: parent.width
                    }
                }

                Botao{
                    altura: 25
                    raio: 10
                    comprimento: 75
                    texto: "Cadastrar"
                    onClicked: {
                        if(usuarioNaoEncontrado.text == "")
                            mainScreen.state = "Servicos"

                    }
                    cor: "#b03635"
                    corTexto: "white"
                    tamFonte: 15
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    id: usuarioNaoEncontrado
                    text: qsTr("")
                    font.family: coolvetica.name
                    font.pixelSize: 15
                }
            }
        }
    }
}
