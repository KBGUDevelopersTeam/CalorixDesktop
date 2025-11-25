import QtQuick 6.9
import QtQuick.Controls 6.9
import QtQuick.Effects 6.9
import QtQuick.Layouts 6.9



Item {
    property double opacity_rect: 1.0

    Rectangle {
        id: background_rect
        anchors.centerIn: parent
        width: parent.width * 0.3
        height: parent.height * 0.4

        color: "#BFC4BC"
        layer.enabled: true
        opacity: parent.opacity_rect
        radius: 8


        signal onLoginVerify


        layer.effect: MultiEffect {
                // shadows
                shadowEnabled: true
                shadowColor: "#000000"
                shadowBlur: 1
                shadowOpacity: 0.3
                shadowVerticalOffset: 8
                shadowHorizontalOffset: 8
            }


        ColumnLayout {
            anchors.fill: parent
            
            // login_label
            Text {
                id: login_label
                text: "Login"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                Layout.topMargin: 50

                font {
                    family: zerove_regular.name
                    pixelSize: 45
                }
            } // end login_label


            // text field - input email
            TextField {
                id: email_input
                color: "#000000"

                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                
                // margins
                Layout.leftMargin: 20
                Layout.rightMargin: 20

                Layout.fillWidth: true
                leftPadding: 20
                rightPadding: 20

                selectionColor: "#BFC4BC"

                placeholderText: "email"
                placeholderTextColor: "#494949"

                background: Rectangle {
                    anchors.fill: parent
                    color: "#A3A3A2"
                    radius: 8
                    border {}
                }

                font {
                    family: zerove_regular.name
                    pixelSize: 25
                }

            } // end email_input


            // text field - input password
            TextField {
                id: password_input
                color: "#000000"

                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                
                // margins
                Layout.leftMargin: 20
                Layout.rightMargin: 20

                Layout.fillWidth: true

                selectionColor: "#A3A3A2"

                leftPadding: 20
                rightPadding: 20
                                
                placeholderText: "password"
                placeholderTextColor: "#494949"
                echoMode: TextInput.Password

                background: Rectangle {
                    anchors.fill: parent
                    color: "#A3A3A2"
                    radius: 8
                    border {}
                }

                font {
                    family: zerove_regular.name
                    pixelSize: 25
                }

            } // end password_input


            // error_message
            Text {
                id: error_message
                color: "red"
                visible: false
                maximumLineCount: 3

                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                font {
                    family: zerove_regular.name
                    pixelSize: 15
                }
            } // end error_message


            Button {
                id: login_button
                Layout.alignment: Qt.AlignHCenter
                Layout.leftMargin: 120
                Layout.rightMargin: 120
                Layout.fillWidth: true
                Layout.minimumHeight: 40

                onClicked: {
                    error_message.visible = false
                    error_message.text = ""

                    if ((email_input.text.length === 0) && (password_input.text.length === 0)) {
                        error_message.visible = true
                        error_message.text = "Input space is empty!"
                        return
                    }

                    if (email_input.text.indexOf("@") < 0) {
                        error_message.visible = true
                        error_message.text = "Your email is incorrect!"
                        return
                    }

                    background_rect.onLoginVerify()
                    return
                }

                background: Rectangle {
                    id: backgroun_login_button
                    anchors.fill: parent
                    radius: 5
                    color: login_button.hovered ? (login_button.pressed ? "#58f132" : "#aeff9a") : "#7bff61"


                    Text {
                        id: text_login_button
                        anchors.centerIn: parent
                        text: "login"

                        color: "#ffffff"

                        font {
                            family: zerove_regular.name
                            pixelSize: 25
                        }
                    }
                }

            }


        }

    }


    // resource loaders
    FontLoader {
        id: zerove_regular
        source: "../../resource/Fonts/Zerove-Regular.otf"
    }


}