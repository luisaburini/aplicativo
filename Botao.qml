import QtQuick 2.0

Item {
    id: botao
    property string texto
    property int altura
    property int tamFonte
    property int comprimento
    property color cor
    property color corTexto
    property int raio
    property string imagem
    property string imagemClick
    signal clicked
    property int timesClicked: 0

    width: comprimento
    height: altura

    FontLoader{
        id: coolvetica
        name: "coolvetica"
        source: "/fonts/coolvetica.ttf"
    }

    Rectangle{
        id: buttonRect
        width: parent.width
        height: parent.height
        color: cor
        radius: raio
        Text {
            id: textoBotao
            text: texto
            font.pixelSize: tamFonte
            font.family: coolvetica.name
            color: corTexto
            anchors.centerIn: parent
        }
    }

    Image {
        id: buttonImage
        source: imagem
        width: comprimento
        height: altura
    }

    MouseArea{
        anchors.fill: parent
        onClicked:
        {
            if(timesClicked == 0)
            {
                buttonImage.source = imagemClick
                timesClicked++
            }
            else{
                buttonImage.source = imagem
                timesClicked = 0
            }
            botao.clicked()
        }
    }

}
