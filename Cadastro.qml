import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Item {
    width: Screen.width
    height: Screen.height

    Column{
        anchors.fill: parent
        spacing: 10
        Image {
            id: backgroundCadastro
            source: "/images/background.png"
            width: parent.width
            height: parent.height
            Rectangle{
                id: rectBackground
                anchors.horizontalCenter: parent.horizontalCenter
                y: 20
                width: parent.width - 50
                height: parent.height - 100
                color: "white"
                radius: 50
                Column{
                    anchors.fill: parent
                    topPadding: 30
                    leftPadding: 30

                    Text {
                        id: textNome
                        text: "Nome Completo"
                        font.family: coolvetica.name
                        font.pixelSize: 15
                        color: "#f3736a"
                    }
                    TextField{
                        id: textEditNome
                        width: rectBackground.width-50
                        height: text.height + 10
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
                    GridLayout{
                        columns: 3
                        rows: 2
                        anchors.horizontalCenter: textEditBairro.horizontalCenter
                        columnSpacing: 5
                        rowSpacing: 3
                        width: textEditBairro.width
                        Text {
                            id: textCPF
                            text: "CPF"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true
                        }
                        Text {
                            id: textRG
                            text: "RG"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true
                        }
                        Text {
                            id: textNascimento
                            text: "Data de nascimento"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true
                        }
                        TextField{
                            id: textEditCPF
                            width: (rectBackground.width-50)
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            placeholderText: "___.___.___-__"
                            inputMask: "[000][.][000][.][000][-][00];_"
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }
                        TextField{
                            id: textEditRG
                            width: (rectBackground.width-50)
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            placeholderText: "__.___.___-_"
                            inputMask: "[00][.][000][.][000][-][00];_"
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }
                        TextField{
                            id: textEditNascimento
                            width: (rectBackground.width-50)
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            placeholderText: "__/__/____"
                            inputMask: "[00][/][00][/][0000];_"
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }

                    }
                    Text {
                        id: textLog
                        text: "Rua"
                        font.family: coolvetica.name
                        font.pixelSize: 15
                        color: "#f3736a"
                    }
                    TextField{
                        id: textEditlog
                        width: rectBackground.width-50
                        height: text.height + 10
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
                        id: textBairro
                        text: "Bairro"
                        font.family: coolvetica.name
                        font.pixelSize: 15
                        color: "#f3736a"
                    }
                    TextField{
                        id: textEditBairro
                        width: rectBackground.width-50
                        height: text.height + 10
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

                    GridLayout{
                        rows: 2
                        columns: 5
                        width: textEditBairro.width

                        anchors.horizontalCenter: textEditBairro.horizontalCenter
                        columnSpacing: 5
                        rowSpacing: 3
                        Text {
                            id: textNumero
                            text: "Número"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true
                        }
                        Text {
                            id: textComplemento
                            text: "Complemento"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true

                        }
                        Text {
                            id: textCEP
                            text: "CEP"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true
                        }
                        Text {
                            id: textCidade
                            text: "Cidade"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true

                        }
                        Text {
                            id: textEstado
                            text: "Estado"
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            color: "#f3736a"
                            Layout.fillWidth: true

                        }
                        TextField{
                            id: textEditNumero
                            width: 100
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }
                        TextField{
                            id: textEditComplemento
                            width: 200
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }
                        TextField{
                            id: textEditCEP
                            width: 300
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            placeholderText: "__.___-___"
                            inputMask: "[00][.][000][-][000];_"
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }

                        TextField{
                            id: textEditCidade
                            width: 400
                            height: text.height + 10
                            focus: true
                            font.family: coolvetica.name
                            font.pixelSize: 15
                            Layout.fillWidth: true
                            Rectangle{
                                color: "#7ac5b1"
                                anchors.bottom: parent.bottom
                                height: 3
                                width: parent.width
                            }
                        }
                        ComboBox{
                            id: comboBoxEstado
                            Layout.fillWidth: true
                            model: ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MG" ,"MT", "MS", "PA" ,
                                "PB", "PE", "PI", "PR", "RJ", "RN", "RO" , "RR", "RS", "SC" , "SE", "SP" ,"TO"]
                        }
                    }

                    Text {
                        id: textEmail
                        text: "Email"
                        font.family: coolvetica.name
                        font.pixelSize: 15
                        color: "#f3736a"
                    }
                    TextField{
                        id: textEditEmail
                        width: rectBackground.width-50
                        height: text.height + 10
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
                        id: textSenha
                        text: "Senha"
                        font.family: coolvetica.name
                        font.pixelSize: 15
                        color: "#f3736a"
                    }
                    TextField{
                        id: textEditSenha
                        width: rectBackground.width-50
                        height: text.height + 10
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
                    Text {
                        id: textConfirmaSenha
                        text: "Confirmar senha"
                        font.family: coolvetica.name
                        font.pixelSize: 15
                        color: "#f3736a"
                    }
                    TextField{
                        id: textEditConfirmaSenha
                        width: rectBackground.width-50
                        height: text.height + 10
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
                    Text {
                        id: textErroSenha
                        text: qsTr("As senhas não conferem")
                        visible: false
                        font.family: coolvetica.name
                        font.pixelSize: 15
                    }

                }
            }
            Row{
                 anchors.horizontalCenter: rectBackground.horizontalCenter
                 anchors.top: rectBackground.bottom
                 spacing: 30
                 topPadding: 10

                 Botao{
                     id: botaoCancela
                     texto: "Cancelar"
                     tamFonte: 15
                     cor: "#f3736a"
                     corTexto: "black"
                     comprimento: 75
                     altura: 30
                     onClicked: mainScreen.state = "EstadoInicial"
                     raio: 30
                 }
                 Botao{
                     id: botaoConfirma
                     texto: "Ok!"
                     tamFonte: 15
                     cor: "#f3736a"
                     corTexto: "black"
                     comprimento:75
                     altura: 30
                     raio: 30
                     onClicked: {
                         textErroSenha.visible = false
                         if(textEditSenha.text == textEditConfirmaSenha.text)
                         {
                             mainScreen.state = "Servicos"
                         }
                         else
                         {
                             textErroSenha.visible = true
                         }

                     }
                 }
             }
        }
    }
}
