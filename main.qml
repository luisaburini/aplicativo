import QtQuick 2.9
import QtQuick.Window 2.10
import QtQuick.Controls 2.2

Window {
    visible: true
    visibility: Window.FullScreen


    ScrollView {
        anchors.fill: parent

        ListView {
            width: parent.width
            model: 20
            delegate: ItemDelegate {
                text: "Item " + (index + 1)
                width: parent.width
            }
        }
    }


    Cadastro{
        id: cadastro
        anchors.fill: parent
        visible: mainScreen.state == "Cadastro"
    }
    Login{
        id: login
        anchors.fill: parent
        visible: mainScreen.state == "Login"
    }
    Atendente{
        id: atendente
        anchors.fill: parent
        visible: mainScreen.state == "Atendente"
    }
    Supervisor{
        id: supervisor
        anchors.fill: parent
        visible: mainScreen.state == "Supervisor"
    }
}
